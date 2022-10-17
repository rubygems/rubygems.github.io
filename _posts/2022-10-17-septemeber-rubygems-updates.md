---
title: Septemeber 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in September.

## RubyGems News

This month in RubyGems, we released RubyGems [v3.3.22](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3322--2022-09-07) and Bundler [v2.3.22](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2322-september-7-2022).

We also shipped the following improvements and fixes (see the changelog for more):

- added `bundle-console` command in Bundler's documentation - [#5901](https://github.com/rubygems/rubygems/pull/5901). 
- updated the Bundler metadata source code URI for accuracy in gemspec - [#5896](https://github.com/rubygems/rubygems/pull/5896).
- removed warning for old TLS version connections - [#5928](https://github.com/rubygems/rubygems/pull/5928).
- removed no longer needed `fiddle` hacks since RubyInstaller released patch versions to not load `fiddle` on boot - [#5902](https://github.com/rubygems/rubygems/pull/5902).

In addition to the above, this month we've been working on migrating Bundler's internal resolver engine to use Pub Grub, which should result in a much better error messages and resolution performance. We hope to release this work soon. 

Also, we have removed the feature of auto-sudo'ing when not having enough permissions to perform certain operations, because it was considered harmful and hardly useful. This removal will be released with Bundler 2.4.

In September, RubyGems gained [94 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-09-01%7D...master@%7B2022-09-31%7D), contributed by 19 authors. There were 1,678 additions and 1,869 deletions across 161 files.

## RubyGems.org News

In September, RubyGems.org saw several bug fixes and updates, some of which include the following:

- merged a feature that allows users to delete all scoped `API` keys on password reset - [#3202](https://github.com/rubygems/rubygems.org/pull/3202).
- added `rake task` to migrate MFA `ui_only` users to `ui_and_gem_signin` - [#3217](https://github.com/rubygems/rubygems.org/pull/3217).
- fixed MFA status label on owners index page - [#3206](https://github.com/rubygems/rubygems.org/pull/3206).
- added a fix to include missing i18n API Keys - [#3208](https://github.com/rubygems/rubygems.org/pull/3208).
- implemented a fix to allow users to delete all scoped `API keys` on password reset - [#3202](https://github.com/rubygems/rubygems.org/pull/3202).
- added recommended `to_utf8` method when comparing certificates subject - [#3197](https://github.com/rubygems/rubygems.org/pull/3197).


This month, RubyGems gained [45 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-09-01%7D...master@%7B2022-09-31%7D), contributed by 11 authors. There were 621 additions and 212 deletions across 65 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
