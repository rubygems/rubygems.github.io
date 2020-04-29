---
title: March 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in March.

## rubygems news

We have great news! Bundler merged into RubyGems! Major props to @hsbt for sending the PR to combine repositories, as well as @deivid-rodruiguez for helping troubleshoot, fix CI, and get the PR landed.

On top of that huge accomplishment, RubyGems saw ongoing maintenance and bugfixes, improved tests on JRuby, better deprecation warnings, and fixes for the internal bot that labels PRs and issues. The RubyGems team spent time to get more familiar with newly imported Bundler issues, and the Bundler team spent time getting more familiar with RubyGems, as well as the usual PR review and issue triage.

In March, RubyGems gained [more than 10,000 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-03-01%7D...master@%7B2020-03-31%7D) (which includes all of Bundler's history!) contributed by 21 authors. There were 96,617 additions and 961 deletions across 1,423 files.


## rubygems.org news

In March, thanks to Aditya and Colby we were able to update most of our gem dependencies, which included a security release to Rails. Additionally, he helped us fix the incorrect rate limit on the gem push endpoint. This should be a big improvement for users with high release volume like AWS, which publishes hundreds of gems every time they update `aws-sdk`. We also resolved some related rate limit issues with multi-factor authentication.

To mitigate against typo-squatting, we were previously maintaining a protected list of gem names using the Levenshtein distance. Unfortunately, the check turned out to be too strict, and caused more problems than it was solving. We have disabled it for now, and we are looking into other ways to deal with typo-squatting. Thank you for bearing with us while we figure this out.

Aditya was also able to complete a grab bag of other useful work, including:

* revisit adoptions PR/issues
* help a gsoc student write RFC for the ownership changes [rubygems/rfcs#25](https://github.com/rubygems/rfcs/issues/25)
* fix incorrect backoff on mfa endpoints beside gem push [rubygems/rubygems.org#2270](https://github.com/rubygems/rubygems.org/issues/2270)
* PR to migrate nginx to sidecar in staging deployment [rubygems/rubygems.org#2291](https://github.com/rubygems/rubygems.org/issues/2291)
* PR to support prefix match [rubygems/rubygems.org#2308](https://github.com/rubygems/rubygems.org/issues/2308)
* PRs to fix several open issues [rubygems/rubygems.org#2315](https://github.com/rubygems/rubygems.org/issues/2315), [#2316](https://github.com/rubygems/rubygems.org/issues/2316), [#2317](https://github.com/rubygems/rubygems.org/issues/2317).
* debug 429 for info endpoint on nginx
* debug partial requests being logged as not cacheable by fastly

For the month, RubyGems.org received [80 commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-03-01%7D...master@%7B2020-03-31%7D) from 6 authors, who made 294 additions and 206 deletions across 17 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
