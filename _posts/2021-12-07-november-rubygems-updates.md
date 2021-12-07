---
title: November 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in November.

## RubyGems News

This month, we released new versions for RubyGems [3.2.31](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3231--2021-11-08), and [3.2.32](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3232--2021-11-23), and Bundler [2.2.31](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2231-november-8-2021), and [2.2.32](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2232-november-23-2021).

The following is a non-exhaustive list of the improvements included in the above releases for RubyGems and Bundler(see the changelogs for more details):

- fixed a `gem fetch` vs. `gem install` inconsistency about platform-specific gems - [#5037](https://github.com/rubygems/rubygems/pull/5037).
-  fixed issues with `--destdir` and `--prefix` options to RubyGems installer to help OS packagers. 
- improved an error message about git being missing - [#5036](https://github.com/rubygems/rubygems/pull/5036), and fixed an issue where Bundler hid the system man pages - [#5039](https://github.com/rubygems/rubygems/pull/5039).
- adapted both clients to a recent gemification of some libraries (`optparse,` `pathname`).
- improved `bundle install` usability by automatically unlocking dependencies in an expired lock file by changing the Gemfile instead of logging an error message - [#5090](https://github.com/rubygems/rubygems/pull/5090).
-  fixed a `bundle update` issue not being able to downgrade Gemfile dependencies properly and worked on some promising refactorings of bundler internals in the context of ensuring we never generated corrupted lock files, no matter what - [#5078](https://github.com/rubygems/rubygems/pull/5078).
- started doing work on Bundle version switching.

In November, Rubygems gained [140 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-11-01%7D...master@%7B2021-11-30%7D), contributed by 12 authors. There were 3,853 additions and 774 deletions across  144 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- updated and released support for ownership calls and requests - [#2748](https://github.com/rubygems/rubygems.org/pull/2748)
- wrote a blog post for gem adoption - [#95](https://github.com/rubygems/rubygems.github.io/pull/95)
- tested Ruby 3.0.3 for memory leak and deployed an update to Ruby 3 - [#2876]( https://github.com/rubygems/rubygems.org/pull/2876)
- debugged high CPU alert on Postgres.

In November, Rubygems.org gained [56 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-11-01%7D...master@%7B2021-11-30%7D), contributed by 8 authors. There were 439 additions and  209 deletions across 63 files.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.