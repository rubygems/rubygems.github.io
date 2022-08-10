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

- updated the CLI to display MFA warnings on `gem signin`, to support work done on the RubyGems.org side - [#5590](https://github.com/rubygems/rubygems/pull/5590).
- added the long-requested feature of allowing to gem install from specific groups only - [#5579](https://github.com/rubygems/rubygems/pull/5759).
- extended the `gem` DSL with a `force_ruby_platform` option - [#4049](https://github.com/rubygems/rubygems/pull/4049).
- fixed an issue with Bundler on Windows that allows the new `x64-mingw-ucrt`, the default on **Ruby 3.1**, to work seamlessly with the existing `platforms DSL` - [#5655](https://github.com/rubygems/rubygems/pull/5655). 
- improved performance of  `bundler/setup` - [#5546](https://github.com/rubygems/rubygems/pull/5546), [#5695](https://github.com/rubygems/rubygems/pull/5695).
- fixed several TruffleRuby issues - [#5711](https://github.com/rubygems/rubygems/pull/5711), [#5694](https://github.com/rubygems/rubygems/pull/5694), [#5746](https://github.com/rubygems/rubygems/pull/5746).
- fixed a confusing permission error when copying compact index cache  - [#5709](https://github.com/rubygems/rubygems/pull/5709).
- fixed an issue with Bundler printing the bug report template so that it gives a better error rather than suggesting a bug - [#5726](https://github.com/rubygems/rubygems/pull/5726).
- improved `gem not found` error messages to include the expected source - [#5729](https://github.com/rubygems/rubygems/pull/5729).
- merged a PR to fix `gem update --system` errors in some edge cases - [#5728](https://github.com/rubygems/rubygems/pull/5728), [#5737](https://github.com/rubygems/rubygems/pull/5737).

In July, RubyGems gained [150 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-07-01%7D...master@%7B2022-07-31%7D), contributed by 15 authors. There were 8,654 additions and 7,904 deletions across 410 files.

# RubyGems.org News
In July, RubyGems.org saw several bug fixes and updates, some of which include the following:

- added an `mfa_required` function to check when a user needs to enable MFA due to one of the packages they own passing the MFA-required downloads threshold - [#3135](https://github.com/rubygems/rubygems.org/pull/3135).
- merged a PR to reorganize locales by running `bill/fill-locales` - [#3134](https://github.com/rubygems/rubygems.org/pull/3134).
- updated the `TargetRubyVersion` for Rubocop - [#3139](https://github.com/rubygems/rubygems.org/pull/3139).
- added an update to skip sending email when a user has no email address present - [#3150](https://github.com/rubygems/rubygems.org/pull/3150).
- fixed webhooks for users with multiple API keys - [#3151](https://github.com/rubygems/rubygems.org/pull/3151).

This month, RubyGems.org gained [74 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-06-01%7D...master@%7B2022-06-31%7D), contributed by 13 authors. There were 1,015 additions and 263 deletions across 63 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
