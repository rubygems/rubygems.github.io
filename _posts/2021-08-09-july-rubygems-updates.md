---
title: July 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in July.

## RubyGems News

This month in RubyGems, We released new versions of RubyGems ([3.2.22](https://github.com/rubygems/rubygems/releases/tag/v3.2.22), [3.2.23](https://github.com/rubygems/rubygems/releases/tag/v3.2.23), [3.2.24](https://github.com/rubygems/rubygems/releases/tag/v3.2.24), and [3.2.25](https://github.com/rubygems/rubygems/releases/tag/v3.2.25)) and Bundler ([2.2.22](https://github.com/rubygems/rubygems/releases/tag/bundler-v2.2.22), [2.2.23](https://github.com/rubygems/rubygems/releases/tag/bundler-v2.2.23), [2.2.24](https://github.com/rubygems/rubygems/releases/tag/bundler-v2.2.24), and [2.2.25](https://github.com/rubygems/rubygems/releases/tag/bundler-v2.2.25)).

In addition to that, RubyGems saw several bug fixes and updates this month, some of which include the following:

- investigated various RubyGems and Bundler issues on GitHub such as [#4717](https://github.com/rubygems/rubygems/pull/4717) and [#4719](https://github.com/rubygems/rubygems/pull/4719)
- worked on the Bundler Version Locking RFC - [#29](https://github.com/rubygems/rfcs/pull/29).
- merged an enhancement that will make setting the `RUBYGEMS_GEMDEPS` environment variable used for avoiding the need to use `bundle exec`.
- worked on automating the process of reproducing builds for gems - [#3118](https://github.com/rubygems/rubygems/issues/3118)
- improved performance of Bundler, shipped some bug fixes, and simplified Bundler internals.
- fixed several outdated definition issues (detecting Gemfile changes over the lock file or not, to skip re-resolving them potentially. 
-  fixed the `--conservative` flag to allow finer-grained bundle updates. 
- worked on smoothing the transition to secure RubyGems sources fully and fixed the regressions we create as we proceed.

In addition to making all these improvements, we achieved even faster Bundler/setup performance.

In July, Rubygems gained [169 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-07-01%7D...master@%7B2021-07-31%7D), contributed by 14 authors. There were 1878 additions and 1237 deletions across 152 files.

## RubyGems.org News

In July, RubyGems.org saw several bug fixes and updates, some of which include the following:

- updated Kubernetes from version `1.16` to `1.20`.
- debugged and resolved CPU spike on the database by removing page entries info from gem index page - [#2738](https://github.com/rubygems/rubygems.org/pull/2738)
- enabled `rails 6.1` default `preload_links_header` - [#3737](https://github.com/rubygems/rubygems.org/pull/2737)

This month, Rubygems.org gained [27 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-07-01%7D...master@%7B2021-07-31%7D), contributed by 3 authors. There were 865 additions and 747 deletions across 13 files.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
