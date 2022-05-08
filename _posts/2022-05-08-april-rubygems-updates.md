---
title: April 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in April.


# RubyGems News

In April, we released new versions of RubyGems [3.3.11](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3311--2022-04-07), [3.3.12](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3312--2022-04-20) and Bundler [2.3.11](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2311-april-7-2022), [2.3.12](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2312-april-20-2022).

The following is a non-exhaustive list of the improvements included in the above releases (see the changelog for further information):

- added modern rubies as valid platform values in Gemfile DSL - [#5469](https://github.com/rubygems/rubygems/pull/5469)
- fixed missing RubyGems version when using old APIs - [#5496](https://github.com/rubygems/rubygems/pull/5496).
- stopped considering `RUBY_PATCHLEVEL` for resolution - [#5472](https://github.com/rubygems/rubygems/pull/5472).
- added cargo builder for Rust extensions - [#5175](https://github.com/rubygems/rubygems/pull/5175).
- enabled multi-factor authentication on specific keys during `gem signin` - [#5305](https://github.com/rubygems/rubygems/pull/5305).

This month, RubyGems gained [86 new commits](
https://github.com/rubygems/rubygems.org/compare/master@%7B2022-04-01%7D...master@%7B2022-04-30%7D), contributed by 13 authors. There were 977 additions and 599 deletions across 64 files.


# RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- replaced instances of blacklist with blocklist and whitelist with allowlist - [#3033](https://github.com/rubygems/rubygems.org/pull/3033).
- updated ERD diagram to reflect the current database structure - [#3032](https://github.com/rubygems/rubygems.org/pull/3032)
- updated  `elasticsearch-rails` gems - [#3028](https://github.com/rubygems/rubygems.org/pull/3028). 
- migrated from using kubernetes-deploy to krane - [#3018](https://github.com/rubygems/rubygems.org/pull/3018).
- added a check to validate updating unconfirmed email - [#3009](https://github.com/rubygems/rubygems.org/pull/3009)

In April, RubyGems.org gained [88 new commits](
https://github.com/rubygems/rubygems.org/compare/master@%7B2022-04-01%7D...master@%7B2022-04-31%7D), contributed by 12 authors. There were 1,266 additions and 733 deletions across 79 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.


