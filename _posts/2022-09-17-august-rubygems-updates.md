---
title: August 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## RubyGems News

This month in RubyGems, we released new versions of RubyGems ([3.3.20](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3320--2022-08-10), [3.3.21](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3321--2022-08-24)) and Bundler([2.3.20](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2320-august-10-2022), [2.3.21](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2321-august-24-2022)).

The following are the main improvements shipped during this month (see the changelog for more improvements and fixes):

- added full support in RubyGems and Bundler for `musl` variants - [#4488](https://github.com/rubygems/rubygems/pull/4488), [#5852](https://github.com/rubygems/rubygems/pull/5852).
- implemented `Bundler.settings[:only]` to install gems of the only specified groups (a longstanding feature request we finally decided to add) - [#5759](https://github.com/rubygems/rubygems/pull/5759).
- restored previous performance of private RubyGems servers; it had gotten very slow after some correctness fixes - [#5826](https://github.com/rubygems/rubygems/pull/5826).

In August, RubyGems gained [142 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-08-01%7D...master@%7B2022-08-31%7D), contributed by 10 authors. There were 2,296 additions and 866 deletions across 214 files.

## RubyGems.org News

In August, RubyGems.org saw several bug fixes and updates, some of which include the following:

- set up email to announce MFA is required for maintainers of gems with 180M+ downloads - [#3171](https://github.com/rubygems/rubygems.org/pull/3171).
- removed MFA required (Phase 3) feature flag cookie - [#3170](https://github.com/rubygems/rubygems.org/pull/3170).
- simplified the API v1 GH scanning endpoint tests - [#3196](https://github.com/rubygems/rubygems.org/pull/3196).
- added superscript star for a RubyGem version date with a tooltip - [#3193](https://github.com/rubygems/rubygems.org/pull/3193).
- set up autocomplete value for OTP text field - [#3187](https://github.com/rubygems/rubygems.org/pull/3187).
- added a redirect uri to MFA setup and upgrade page that lets the user return to the settings page  - [#3185](https://github.com/rubygems/rubygems.org/pull/3185).
- blocked `push`, `yank`, `a/r owners`, `gem signin` if the user requires MFA and has it disabled or at a weak level - [#3155](https://github.com/rubygems/rubygems.org/pull/3155).

This month, RubyGems gained [88 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-08-01%7D...master@%7B2022-08-31%7D), contributed by 14 authors. There were 2,684 additions and 510 deletions across 68 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.