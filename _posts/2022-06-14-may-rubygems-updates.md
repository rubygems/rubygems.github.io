---
title: May 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in May.

# RubyGems News

This month in RubyGems, we released new versions of RubyGems [3.3.14](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3314--2022-05-18), [3.3.15](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3315--2022-06-01) and Bundler [2.3.14](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2314-may-18-2022), [2.3.15](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2315-june-1-2022).

The following is a non-exhaustive list of other improvements included in the above releases (see the changelog for further information):

- fixed a regression causing an error message when an incompatible Ruby version is used - [#5525](https://github.com/rubygems/rubygems/pull/5525).
- fixed an issue with inline mode install output printing information about previously locked gems - [#5529](https://github.com/rubygems/rubygems/pull/5529), [#5530](https://github.com/rubygems/rubygems/pull/5530).
- fixed a regression when printing resolution conflicts on metadata requirements - [#3362](https://github.com/rubygems/rubygems/pull/5562).
- refactored the code that handles finding a target version in `gem update --system` - [#5568](https://github.com/rubygems/rubygems/pull/5568).
- made an update to display better error messaging when previous installation fails to be removed -[#5664](https://github.com/rubygems/rubygems/pull/5564).
- improved exception reporting in bug report template - [#5563](https://github.com/rubygems/rubygems/pull/5563).

In May, RubyGems gained [84 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-05-01%7D...master@%7B2022-05-31%7D), contributed by 9 authors. There were 851 additions and 472 deletions across 123 files.

# RubyGems.org News

In May, RubyGems.org saw several bug fixes and updates, some of which include the following:

- fixed access to undefined variable version in `GemcutterTaskshelper`- [#3068](https://github.com/rubygems/rubygems.org/pull/3068).
- fixed some lint failure issues - [#3069](https://github.com/rubygems/rubygems.org/pull/3069).
- set UTC date format in `update_version_file_test` rake task - [#3066](https://github.com/rubygems/rubygems.org/pull/3066).
- re-designed dependencies list on RubyGems UI - [#3062](https://github.com/rubygems/rubygems.org/pull/3062).
- added a fix to find versions explicitly by name & platform - [#3060](https://github.com/rubygems/rubygems.org/pull/3060).

This month, RubyGems.org gained [51 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-05-01%7D...master@%7B2022-05-31%7D), contributed by 15 authors. There were 580 additions and 91 deletions across 35 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
