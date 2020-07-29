---
title: API key logging leak
layout: post
author: André Arko
---
# API key logging leak

### Summary

407 user API keys were inadvertently sent to a third-party service via HTTP logs between Oct 2018 and Jul 2020. The data was available to the public, but based on the service's query logs, no one ever queried for any of the API keys that were sent.

Out of an abundance of caution, we have reset all 407 API keys. We are also [updating the API key system](https://github.com/rubygems/rubygems.org/pull/1962) to reduce the chance this type of issue could happen again in the future.

### What happened

RubyGems.org started sending Fastly and Nginx access logs to Honeycomb in October 2018. Honeycomb provides public access to the RubyGems.org dataset, and [there is lots of useful and interesting data there](https://docs.honeycomb.io/learning-about-observability/rubygems/) about the Ruby ecosystem. RubyGems.org scrubs PII (like client IP addresses) before sending the data to Honeycomb, and Honeycomb retains the data for up to 60 days.

On Saturday, July 18 2020, the RubyGems.org team discovered that some API keys were publicly accessible via event logs sent to [Honeycomb](https://www.honeycomb.io/). After discovering this, we immediately stopped sending new data to Honeycomb and removed public access to the dataset.

### Why that is bad

RubyGems.org user API keys are, effectively, user credentials. If a malicious developer was able to get your API key, they could potentially use that key to yank your gems, or push new malicious versions of your gems.

It's important to note that versions are immutable, so once a version was legitimately published it cannot be modified, even with proper (or stolen) credentials. In addition, if you have two-factor authentication enabled for API access, then a stolen API key is not enough to gain access to gem push, yank, owner and signin commands.

### Who was affected

Only users who subscribe to their personal dashboard RSS feed in an RSS reader could be affected.

The leaked API keys were all sent in the query string for the customized dashboard RSS feed. Unfortunately, many RSS clients are unable to send authorization headers, and so sending a token in the URL is the only way for many RSS clients to view their personalized dashboard.Â 

When we originally set up the Honeycomb integration, this feature was overlooked, and API keys in GET requests for the dashboard were not scrubbed from the logs.

### What we did about it

We scanned the full Honeycomb dataset for the last 60 days, and found 155 keys that were inadvertently sent to Honeycomb. We reset all of those keys immediately. Then, with the help of the Honeycomb team, we reviewed the complete Honeycomb query history, and confirmed that no queries had ever searched for API keys at any point in the past. Finally, we unarchived our full HTTP logs, going back to October 2018, and found another 252 API keys that were ever sent to Honeycomb. We have reset those API keys as well.

In total, 407 API keys were ever sent to Honeycomb (out of 147,849 API keys total). We have reset all 407 keys, and sent an email to every user whose key was reset.

### What you need to do

If you used the custom dashboard RSS feed with your API key in the URL sometime since October 2018, you should check your gems to make sure there were no unauthorized versions added between October 2018 and July 2020.

Since August 2019, every gem push has triggered a notification email to all accounts with owner permission on that gem. If you didn't get any suspicious notifications, you only need to verify your gems from October 2018 to August 2019.

Anyone affected by this leak has had their API key reset already. If you want to be extremely cautious, you can reset your API key again. It's easy for anyone to reset their own API key: go to [rubygems.org/profile/edit](https://rubygems.org/profile/edit) and look for the button to "Reset my API key".

### Future steps

  - As mentioned above, we reset all API keys that were ever sent to Honeycomb.
  - We no longer allow API actions authenticated via query string parameter. This is a breaking change, but we feel it is necessary for a secure ecosystem.
  - We will soon change the RSS feed to have its own key that does not have access to the API, reducing the risk of using the RSS feed.
  - Once we are confident we are filtering API keys out of the data, we will re-enable the Honeycomb integration.
