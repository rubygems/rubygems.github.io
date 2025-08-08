---
title: Update on Malicious Gems Removal
layout: post
author: Marty Haught
author_email: marty@rubycentral.org
---
We are aware of [a recent report about malicious gems](https://socket.dev/blog/60-malicious-ruby-gems-used-in-targeted-credential-theft-campaign) that were targeting social media credentials. **Our team first detected this activity on July 20th and began removing the affected gems immediately through our regular security processes.** 

We want to reassure the Ruby community that this issue has already been taken care of and is no longer an active threat. **It involved a small number of gems from bad actors and does *not* impact widely used or trusted packages.**

Security is part of our daily operations. We remove suspicious gems regularly, typically before issues are reported by third parties (our systems detect 70-80% of the gems we ultimately remove). While we don’t announce every action we take, our monitoring systems are working as intended, and our security team is always actively working to protect the RubyGems ecosystem. 

For transparency, we would like to add more context from our team to the existing reporting, and will be publishing a more detailed breakdown of this incident next week, including information on how we typically handle threats like these.

**In the meantime, we encourage developers to:**

* Always be cautious when using newly published or low-download gems.  
* Check the gem’s author and repository links.  
* Report anything suspicious to our team by emailing [security@rubygems.org](mailto:security@rubygems.org).

You can also reach out to our team with questions or concerns by joining the [Bundler Slack.](https://slack.bundler.io/)