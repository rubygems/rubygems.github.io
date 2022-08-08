---
title: July 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in July.

# RubyGems News

This month in RubyGems, we released new versions of RubyGems [3.3.18](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3318--2022-07-14), [3.3.19](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3319--2022-07-27) and Bundler [2.3.18](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2318-july-14-2022), [2.3.19](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2319-july-27-2022).

The following is a non-exhaustive list of other improvements included in the above releases (see the changelog for further information):
 
- fixed an issue with Bundler on Windows that allows the new `x64-mingw-ucrt`, the default on **Ruby 3.1** to work seamlessly with the existing `platforms DSL` - [#5655](https://github.com/rubygems/rubygems/pull/5655). 
- improved the  `bundler/setup` speed by lazily checking for missing platform-specific variants if nothing else has changed - [#5695](https://github.com/rubygems/rubygems/pull/5695).
- fixed some issues on `truffleruby` caused by other bug - [#5694](https://github.com/rubygems/rubygems/pull/5694), [#5746](https://github.com/rubygems/rubygems/pull/5746)
- fixed confusing permission error when copying compact index cache  - [#5709](https://github.com/rubygems/rubygems/pull/5709).
- fixed an issue with Bundler printing the bug report template when it should give a better error and not suggest a bug - [#5726](https://github.com/rubygems/rubygems/pull/5726).
- improved `gem not found` error messages to include expected source - [#5729](https://github.com/rubygems/rubygems/pull/5729).
- merged a PR to fix `gem update --system` errors in some edge cases - [#5728](https://github.com/rubygems/rubygems/pull/5728), [#5737](https://github.com/rubygems/rubygems/pull/5737).
- made RubyGems requiring `fileutils` lazier to avoid some flaky test failures - [#5738](https://github.com/rubygems/rubygems/pull/5738).

In July, RubyGems gained [148 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-07-01%7D...master@%7B2022-07-31%7D), contributed by 15 authors. There were 8,625 additions and 7,892 deletions across 409 files.

# RubyGems.org News
In July, RubyGems.org saw several bug fixes and updates, some of which include the following:

- added `mfa_required` function to check when a user needs to enable MFA because one of the packages they own passed the MFA-required downloads threshold - [#3135](https://github.com/rubygems/rubygems.org/pull/3135).
- merged a PR to reorganize locales by running `bill/fill-locales` - [#3134](https://github.com/rubygems/rubygems.org/pull/3134).
- updated the `TargetRubyVersion` for Rubocop - [#3139](https://github.com/rubygems/rubygems.org/pull/3139).
- skipped sending email when a user has no email address present - [#3150](https://github.com/rubygems/rubygems.org/pull/3150)
- fixed webhooks for users with multiple API keys - [#3151](https://github.com/rubygems/rubygems.org/pull/3151).

This month, RubyGems.org gained [71 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-06-01%7D...master@%7B2022-06-31%7D), contributed by 14 authors. There were 1,019 additions and 267 deletions across 47 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
