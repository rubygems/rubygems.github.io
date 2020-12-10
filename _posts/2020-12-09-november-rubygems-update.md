---
title: November 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in November.


## RubyGems News

In November, we worked on the [Bundler Version Locking RFC](https://github.com/rubygems/rfcs/pull/29) that allows a user to specify a required Bundler version in the Gemfile/gemspec with a working [proof of concept](https://github.com/rubygems/rfcs/pull/29#issuecomment-731333194). We also made improvements to platform support by enabling the `specific_platform` functionality by default, and decided to delay the change to resolve all Gemfile platforms automatically in addition to that, we made the following improvements and fixes:

* fixed a missing require issue. [#4036](https://github.com/rubygems/rubygems/pull/4036)
* fixed a couple of minor "Windows paths" issues. [#4038](https://github.com/rubygems/rubygems/pull/4038), [#4039](https://github.com/rubygems/rubygems/pull/4039)
* fixed [gem specification `--platform`](https://github.com/rubygems/rubygems/pull/4043).
* added an `--all-platforms` flag that optionally allows generating Windows binstubs from non-Windows platforms. [#3886](https://github.com/rubygems/rubygems/pull/3886)
* merged a PR to fix a bundle remove bug where it was removing comments. [#4045](https://github.com/rubygems/rubygems/pull/4045)
* merged a PR to support the new signin endpoints. [#3840](https://github.com/rubygems/rubygems/pull/3840)
* merged a PR to improve the `-C` flag to gem build. [#3983](https://github.com/rubygems/rubygems/pull/3983)
* added a fix to slightly improve some "**gem not found**" error messages. [#4019](https://github.com/rubygems/rubygems/pull/4019)
* fixed an intermittent spec failure. [#4060](https://github.com/rubygems/rubygems/pull/4060)
* fixed an issue with changelog generation. [#4059](https://github.com/rubygems/rubygems/pull/4059)
* fixed an issue with nested bundler invocations. [#4063](https://github.com/rubygems/rubygems/pull/4062)
* fixed a discrepancy between executing with or without bundle exec. [#4063](https://github.com/rubygems/rubygems/pull/4063)
* added more descriptive errors about default network errors. [#4061](https://github.com/rubygems/rubygems/pull/4061)
* fixed a CI issue that appeared under Windows. [#4068](https://github.com/rubygems/rubygems/pull/4068)
* merged a tweak to the bundle gem default skeleton. [#4066](https://github.com/rubygems/rubygems/pull/4066)
* Extend `gem` DSL with a `force_ruby_platform` option. [#4049](https://github.com/rubygems/rubygems/pull/4049)

In November, [RubyGems](https://github.com/rubygems/rubygems) gained [58 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-11-01%7D...master@%7B2020-11-30%7D), contributed by 10 authors. There were 816 additions and 426 deletions across 79 files.

## RubyGems.org News
This month, we coordinated with Fastly support to enable Globalsign certs and AAAA records in our TLS config. We updated [RubyGems CLI gem signin](https://github.com/rubygems/rubygems/pull/3840) according to changes requested in a review and also made the following fixes and improvements:

* added a new way to match RubyGems versions using the `build-arg` in docker image. [#2548](https://github.com/rubygems/rubygems.org/pull/2548)
* fixed failing tests in `shoulda-matchers` update and reported an issue of invalid objects should `belong_to` tests on `shoulda-matchers` repo. [#1375]( https://github.com/thoughtbot/shoulda-matchers/issues/1375)
* investigated `DelegationError` for ownership records with nil `user_id`.
* updated our DMARC policy to ensure that spoofed emails with [rubygems.org](https://rubygems.org) in sender get marked as spam.
* worked on a PR to resolve a HackerOne report, disallowing duplicate canonical version numbers. [#2559](https://github.com/rubygems/rubygems.org/pull/2559)
* read privacy policy of other package manager websites and researched the requirements for CCPA and GDPR.
* add `Pagerduty` integration for Cloudwatch ALB alerts.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

In November, [RubyGems.org](https://github.com/rubygems/rubygems.org) gained [23 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-11-01%7D...master@%7B2020-11-30%7D), contributed by 3 authors. There were 89 additions and 15 deletions across 12 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.tation, writing and/or updating documentation, and bug triage.