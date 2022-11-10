---
title: October 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## RubyGems News
This month in RubyGems, we released new version of RubyGems [3.3.23](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3323--2022-10-05), [3.3.24](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3324--2022-10-17) and Bundler [2.3.23](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2323-october-5-2022), [2.3.24](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2324-october-17-2022).

The following improvements and fixes are also included in these releases (see the changelog for more information):

- made the `util/rubocop` script use `in-tree` Bundler - [#5979](https://github.com/rubygems/rubygems/pull/5979).
- added extra resolver spec group for Ruby platform when required - [#5698](https://github.com/rubygems/rubygems/pull/5698).
- added `SHA256` in test certificates - [#5982](https://github.com/rubygems/rubygems/pull/5982).
- GitHub DSL documentation was updated to reflect that it uses the https protocol under the hood instead of git. - [#5993](https://github.com/rubygems/rubygems/pull/5993).
- allow upcoming JRuby to pass keywords to `Kernel#warn` - [#6002](https://github.com/rubygems/rubygems/pull/6002).
- specified all GitHub sources use the HTTPS secure protocol by default - [#6026](https://github.com/rubygems/rubygems/pull/6026).

In October, RubyGems gained [74 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-10-01%7D...master@%7B2022-10-31%7D), contributed by 11 authors. There were 1,594 additions and 833 deletions across 125 files.

## RubyGems.org News

This month, we triage issues, review pull requests, and update dependencies on RubyGems.org.

In October, RubyGems gained [30 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-10-01%7D...master@%7B2022-10-31%7D), contributed by 3 authors. There were 22 additions and 22 deletions across 1 file.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
