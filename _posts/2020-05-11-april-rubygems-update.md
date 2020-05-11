---
title: April 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in April.


## RubyGems News
RubyGems changes in April included a fix for a recent regression in RubyGems to interfere with common bundler usages, improvement to a [missing spec error](https://github.com/rubygems/rubygems/pull/3559), and shipping a new RSpec runner that works better with parallelization. We also updated our CI to ruby 2.7 and made a PR to manage bundler development dependencies through bundler.

For the month, [RubyGems](https://github.com/rubygems/rubygems) gained [181 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-04-01%7D...master@%7B2020-04-30%7D), contributed by 15 authors. There were 1857 additions and 1015 deletions across 132 files.


## RubyGems.org News

In April, we worked on keeping [RubyGems.org](http://rubygems.org/) dependencies up to date. Thanks to [@aditya](https://github.com/sonalkr132), we sent email notification requesting users to enable MFA leading to three fold increase in MFA enabled account.

In addition to those developments, we worked on the following:

- Merged bundler-site and RubyGems guides PRs.
- Updated our ElasticSearch Index to support prefix queries; previously these were returning incomplete search results.
- Investigated Intermittent CI failure [rubygems/bundler-site/issues/519](https://github.com/rubygems/bundler-site/issues/519).
- PR to add validation to string columns with user input rubygems/rubygems.org#2346 
- Fixed the broken animation on stats page and ensured Github stars count were using the metadata URI attributes [rubygems/rubygems.org#2335](https://github.com/rubygems/rubygems.org/pull/2335)
- Worked on optimizations for our stats and just_updated endpoints, this will help us reduce 1200ms and 600ms in response time respectively. [rubygems/rubygems.org#2333](https://github.com/rubygems/rubygems.org/pull/2335)
- Finished work on reset of rate limit on successful gem push [rubygems/rubygems.org#2311](https://github.com/rubygems/rubygems.org/pull/2311)

 Thanks to @johnfrancismccann, our releases page shows a consistent number of items per page.

For the month, Rubygems.org gained [70 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-04-01%7D...master@%7B2020-04-30%7D), contributed by 8 authors. There were 337 additions and 143 deletions across 39 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
