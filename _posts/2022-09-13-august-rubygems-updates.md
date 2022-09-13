---
title: August 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## RubyGems News

This month in RubyGems, we released new versions of RubyGems [3.3.20](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3320--2022-08-10), [3.3.21](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3321--2022-08-24) and Bundler [2.3.20](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2320-august-10-2022), [2.3.21](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2321-august-24-2022).

The following are the main improvements shipped during this month (see the changelog for more improvements and fixes):

- added `Bundler.settings[:only]` to install gems of the only specified groups - [#5759](https://github.com/rubygems/rubygems/pull/5759).
- shipped a feature to allow ignore funding messages by adding the `ignore_funding_requests` config flag - [#5767](https://github.com/rubygems/rubygems/pull/5767).
- added a new `--prefer-local` resolution mode that prioritizes gems available locally, even if it's not the latest. This is very useful for OS packagers - [#5761](https://github.com/rubygems/rubygems/pull/5761).
- made the `--standalone` flag work nicely with `--local` allowing it to generate a `bundler/setup` standalone script that sets up the `$LOAD_PATH` to point to local gems - [#5762](https://github.com/rubygems/rubygems/pull/5762).
- fixed `bundle outdated --strict` showing too many outdated gems - [#5798](https://github.com/rubygems/rubygems/pull/5798).
- fixed a RubyGems resolution issue where locally installed pre-release gems were being ignored - [#5821](https://github.com/rubygems/rubygems/pull/5821).
- fixed a still unreported regression when lockfile includes transitive dependencies don't match the running Ruby version - [#5840](https://github.com/rubygems/rubygems/pull/5840).
- restored previous performance of private RubyGems servers while hopefully not compromising it's correctness - [#5826](https://github.com/rubygems/rubygems/pull/5826).
- worked on unintentional downgrades in conservative mode -[#5847](https://github.com/rubygems/rubygems/pull/5847).
- fixed an edge case where `bundler/inline` unintentionally skips install - [#5848](https://github.com/rubygems/rubygems/pull/5848).
- made RubyGems and Bundler ready for properly dealing with -`linux-musl` variants of gems - [#4488](https://github.com/rubygems/rubygems/pull/4488).

In August, RubyGems gained [152 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-08-01%7D...master@%7B2022-08-31%7D), contributed by 11 authors. There were 2,296 additions and 902 deletions across 214 files.

## RubyGems.org News

In August, RubyGems.org saw several bug fixes and updates, some of which include the following:

- set up email to announce MFA is required for maintainers of gems with 180M+ downloads - [#3171](https://github.com/rubygems/rubygems.org/pull/3171).
- removed MFA required (Phase 3) feature flag cookie - [#3170](https://github.com/rubygems/rubygems.org/pull/3170).
- simplified the API v1 GH scanning endpoint tests - [#3196](https://github.com/rubygems/rubygems.org/pull/3196).
- added superscript star for a RubyGem version date with a tooltip - [#3193](https://github.com/rubygems/rubygems.org/pull/3193).
- set up autocomplete value for OTP text field - [#3187](https://github.com/rubygems/rubygems.org/pull/3187).
- added a redirect uri to MFA setup and upgrade page that let's the user return to the settings page  - [#3185](https://github.com/rubygems/rubygems.org/pull/3185).
- blocked `push`, `yank`, `a/r owners`, `gem signin` if the user requires MFA and has it disabled or at a weak level - [#3155](https://github.com/rubygems/rubygems.org/pull/3155).

This month, RubyGems gained [88 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-08-01%7D...master@%7B2022-08-31%7D), contributed by 14 authors. There were 2,684 additions and 510 deletions across 68 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.

