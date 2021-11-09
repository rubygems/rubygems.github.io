---
title: October 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in October.

## RubyGems News

In October, we released new versions of RubyGems: [3.2.29](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3229--2021-10-08), [3.2.30](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3230--2021-10-26) and Bundler: [2.2.29](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2229-october-8-2021), [2.2.30](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2230-october-26-2021).

The following is a non-exhaustive list of the improvements included in the above releases (see changelogs for more details):

- made gem install noticeably faster on Windows - [#4960](https://github.com/rubygems/rubygems/pull/4960).
- made `bundle install` automatically reinstall deleted gems even when the lockfile is up to date - [#4974](https://github.com/rubygems/rubygems/pull/4974).
- fixed an issue where lockfile checks were making Bundler crash - [#4941](https://github.com/rubygems/rubygems/pull/4941).
- improved some errors when `bundle install` crashes due to permission issues, and also when gem tasks fail to run gem commands under the hood - [#4965](https://github.com/rubygems/rubygems/pull/4965).
- added a couple of load improvements, like using `require_relative` in more places - [#4978](https://github.com/rubygems/rubygems/pull/4978), and avoiding activating the digest gem from RubyGems - [#4979](https://github.com/rubygems/rubygems/pull/4979).

This month, RubyGems gained [133 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-10-01%7D...master@%7B2021-10-31%7D), contributed by 16 authors. There were 27,317 additions and 82,207 deletions across 2,572 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- updated and released MFA requirement opt-in - [#2242](https://github.com/rubygems/rubygems.org/pull/2242).
- wrote a guide for MFA requirement opt-in feature - [#297](https://github.com/rubygems/guides/pull/297).
- debugged memory leaks after update to Ruby 3 was made, and reverted update - [#2843](https://github.com/rubygems/rubygems.org/issues/2843).
- fixed race condition between version file update and version release - [#2811](https://github.com/rubygems/rubygems.org/pull/2811).
- fixed broken transitive dependencies page for non-ruby platform versions - [#2816](https://github.com/rubygems/rubygems.org/pull/2816).
- responded to pager calls for the database being overloaded by bot traffic and updated UI rate limit - [#2835](https://github.com/rubygems/rubygems.org/pull/2835).

In October, RubyGems.org gained [49 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-10-01%7D...master@%7B2021-10-31%7D), contributed by 7 authors. There were 873 additions and 120 deletions across 61 files.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
