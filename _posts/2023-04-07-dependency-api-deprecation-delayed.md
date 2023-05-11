---
title: Dependency API Deprecation Delayed
layout: post
author: André Arko
author_email: andre@arko.net
---

**Update**: Based on additional feedback from community members, we have pushed back the removal by two weeks and added an exception until August 8 for Java users. New brownout dates are May 12, 15, 17, 19, 22, and the removal date is moved from May 10 to May 24.

**tl;dr**: the Dependency API will stick around for an extra month to allow downstream projects more time to handle the change. New brownout dates: April 10, 17, 24, May 1, 3, 5, 12, 15, 17, 19, 22. New removal date: May 24.

### What happened

Back in February, we posted about [our plan to remove the Dependency API](https://blog.rubygems.org/2023/02/22/dependency-api-deprecation.html). During the full day brownout on April 3, we started to hear from users of third party software like Artifactory and Nexus that it was impossible for them to install gems.

It turns out that Artifactory and Nexus (at least sometimes) get a `404 Not Found` response from RubyGems.org, but then return a `200 OK` response to Bundler or RubyGems. Unfortunately, that `200 OK` response prevents Bundler from falling back to the full index, and breaks installing gems.

We definitely weren't expecting Artifactory or Nexus to tell Bundler the API request was successful but empty after we returned a 404!

### What we're doing

Because of this unexpected impact on end users, we have decided to push back removing the dependency API by one month, to May 10. There will be additional 24-hour brownouts on:

- April 10 00:00:01 to 23:59:59 (UTC)
- April 17 00:00:01 to 23:59:59 (UTC)
- April 24 00:00:01 to 23:59:59 (UTC)
- May 01 00:00:01 to 23:59:59 (UTC)
- May 03 00:00:01 to 23:59:59 (UTC)
- May 05 00:00:01 to 23:59:59 (UTC)
- May 12 00:00:01 to 23:59:59 (UTC)
- May 15 00:00:01 to 23:59:59 (UTC)
- May 17 00:00:01 to 23:59:59 (UTC)
- May 19 00:00:01 to 23:59:59 (UTC)
- May 22 00:00:01 to 23:59:59 (UTC)

The dependency API will be disabled on May 24, 2023, at 00:00:01 UTC.

### Gemfile workaround

If you're using Bundler, the simplest workaround is to use a RubyGems.org source block in your Gemfile for any gems you are installing from RubyGems.org. Here's an example:

```ruby
source "https://rubygems.org" do
  gem "from_rubygems"
end

source "my.internal.artifactory" do
  gem "private_gem"
end
```

### Artifactory issues

JFrog has already posted [an official solution to the problem](https://jfrog.com/help/r/artifactory-rubygems-org-dependency-api-deprecation), which consists of enabling a single configuration flag in Artifactory to provide the newer compact index format instead.

There is [a public Jira ticket](https://jfrog.atlassian.net/browse/RTFACT-29525) that includes discussion of the problem, as well as an nginx or apache-based workaround that can also be applied.

If you are having problems using Artifactory, please [contact JFrog support](https://jfrog.com/support/).

### Nexus issues

There is [a public Nexus Jira ticket](https://issues.sonatype.org/browse/NEXUS-38452) that includes discussion of the problem, as well as an nginx based workaround that can be applied for the time being.

If you are having problems using Nexus, please [contact Sonatype support](https://support.sonatype.com/).

### Other issues

If you are seeing a problem while using Artifactory, Nexus, Chef, Puppet, or any other software that depends on RubyGems, please contact the vendor for that product directly for support.

If you are having a problem directly with RubyGems.org, please [open a ticket in our public issue tracker](https://github.com/rubygems/rubygems.org/issues) instead of asking for private support. Please avoid contacting maintainers directly to ask for help.

The RubyGems.org team is only a few people, and none of us are able to work on RubyGems as our full-time job. We are providing a free service because we love the Ruby community, but we are not a commercial product with revenue that would allow us to have full-time staff to help with problems.

We are happy to listen to your feedback, and try to work with you to find a solution with the best outcome for you, the Ruby community, and the maintainers of RubyGems.
