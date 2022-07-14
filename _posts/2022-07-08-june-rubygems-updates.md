---
title: June 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in June.

# RubyGems News

This month in RubyGems, we released new versions of RubyGems [3.3.16](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3316--2022-06-15), [3.3.17](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3317--2022-06-29) and Bundler [2.3.16](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2316-june-15-2022), [2.3.17](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2317-june-29-2022).

The following is a non-exhaustive list of other improvements included in the above releases (see the changelog for further information):

- fixed a regression when loading old marshaled specs - [#5610](https://github.com/rubygems/rubygems/pull/5610).
- improved performance of installing gems from gem server sources -  [#5614](https://github.com/rubygems/rubygems/pull/5614).
- fixed incorrect password redaction when there's an error in `gem source -a` - [#5623](https://github.com/rubygems/rubygems/pull/5623).
- fixed some errors being printed twice in `--verbose` mode - [#5654](https://github.com/rubygems/rubygems/pull/5654).
- created documentation on how to run `rake setup` as a regular user - [#5662](https://github.com/rubygems/rubygems/pull/5662).
- added clear and descriptive messages when `gem update` fails to update some gems -  [#5676](https://github.com/rubygems/rubygems/pull/5676).

In June, RubyGems gained [168 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-06-01%7D...master@%7B2022-06-31%7D), contributed by 13 authors. There were 1,610 additions and 1,233 deletions across 165 files.

# RubyGems.org News

In June, RubyGems.org saw several bug fixes and updates, some of which include the following:

- fixed confusion in MFA behaviour - [#3079](https://github.com/rubygems/rubygems.org/pull/3079).
- added a prompt to notify users leaving without copying MFA recovery codes - [#3082](https://github.com/rubygems/rubygems.org/pull/3082).
- removed API key `rubygems_id` from the form url query string - [#3085](https://github.com/rubygems/rubygems.org/pull/3085).
- separated MFA methods from `User.rb` to its own concern `UserMultifactorMethods` - [#3108](https://github.com/rubygems/rubygems.org/pull/3108).
- added case insensitive uniqueness validation to user handles - [#3120](https://github.com/rubygems/rubygems.org/pull/3120).
- added a per user rate limit to the `gem push` command - [#3121](https://github.com/rubygems/rubygems.org/pull/3121).
- added a Capybara find method to wait for page to load when running tests - [#3124](https://github.com/rubygems/rubygems.org/pull/3124).

This month, RubyGems.org gained [74 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-06-01%7D...master@%7B2022-06-31%7D), contributed by 13 authors. There were 1,015 additions and 263 deletions across 63 files.

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
