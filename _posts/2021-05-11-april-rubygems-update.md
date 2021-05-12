---
title: April 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in April.

## RubyGems News

This month in RubyGems, we released new versions for **RubyGems** [v3.2.16](https://github.com/rubygems/rubygems/blob/bb93b974100e9ddff7043e648d762e8a412be04e/CHANGELOG.md#3216--2021-04-08), [v3.2.17](https://github.com/rubygems/rubygems/blob/bb93b974100e9ddff7043e648d762e8a412be04e/CHANGELOG.md#3217--2021-05-05) and corresponding versions for **Bundler** ([v2.2.16](https://github.com/rubygems/rubygems/blob/bb93b974100e9ddff7043e648d762e8a412be04e/bundler/CHANGELOG.md#2216-april-8-2021) and [v2.2.17](https://github.com/rubygems/rubygems/blob/bb93b974100e9ddff7043e648d762e8a412be04e/bundler/CHANGELOG.md#2217-may-5-2021)). 

As part of those releases, we made the following improvements and fixes:

- fixed an issue affecting custom `sidekiq-pro` gem servers, which was preventing users from upgrading their sidekiq-pro version - [#4563](https://github.com/rubygems/rubygems/pull/4563).
- made Bundler more secure by preventing any credentials from being logged to the screen, thus potentially preventing users from unintentionally leaking them when pasting them to a Github issue or similar situations - [#4564](https://github.com/rubygems/rubygems/pull/4564), [#4566](https://github.com/rubygems/rubygems/pull/4566).
- fixed a few resolution and materialization issues in Bundler - [#4556](https://github.com/rubygems/rubygems/pull/4556), [#4562](https://github.com/rubygems/rubygems/pull/4562), and also improved RubyGems handling of repositories including symlinks - [#2836](https://github.com/rubygems/rubygems/pull/2836).

In April, Rubygems gained [101 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-04-01%7D...master@%7B2021-04-30%7D), contributed by 15 authors. There were 1,591 additions and 391 deletions across 134 files.

## RubyGems.org News

In April, RubyGems.org saw several bug fixes and updates, some of which include the following:

- enabled support of non-SNI traffic on rubygems.org by migration of fastly endpoints to a dedicated IP - [#4228](https://github.com/rubygems/rubygems/issues/4228).
- [enabled auth. requirement for URL purge requests to Fastly](https://github.com/rubygems/rubygems.org/commit/da99700a6c727a4381648e4b687d4d3f08f67a25).
- fixed failing background jobs for sending the email confirmation - [#2694](https://github.com/rubygems/rubygems.org/pull/2694), [#2695](https://github.com/rubygems/rubygems.org/pull/2695).
- added validation for `unconfirmed_email` regex - [#2694](https://github.com/rubygems/rubygems.org/pull/2694).
- fixed `RecordNotFound` in `OwnershipConfirmation` mailer - [#2695](https://github.com/rubygems/rubygems.org/pull/2695).
- reduced abusers rate limit to 30 rps - [#2703](https://github.com/rubygems/rubygems.org/pull/2703).
- enabled Multi-Factor Authentication (MFA) instruction only if `current_user` has MFA disabled - [#2705](https://github.com/rubygems/rubygems.org/pull/2705).
- thanks to [@arthurnn](https://github.com/arthurnn) and [@greysteil](https://github.com/greysteil), we now support automatic revocation of API keys committed to GitHub repositories - [#2687](https://github.com/rubygems/rubygems.org/pull/2687). Note that this is only supported for new API key format. Please check our [guide for migration from legacy API key](https://guides.rubygems.org/api-key-scopes/#migration-from-legacy-api-key).

For this month, [RubyGems.org](https://github.com/rubygems/rubygems.org) gained [45 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-04-01%7D...master@%7B2021-04-30%7D), contributed by 9 authors. There were 424 additions and 52 deletions across 34 files.

## Ruby Toolbox and API News

In April, we focused on maintenance work that involved  fixing random failures in the Ruby Toolbox visual regression CI tests, dependency upgrades, fixes on a webhook reception, and renaming default git branches to main across all Ruby Toolbox repositories.

On Ruby API, we worked on importing the core Ruby type signatures using the `RBS gem` where the current definitions are being maintained. Our aim is for the type signatures be parsed inside Ruby API so they can be presented to the user in an easy to understand and digestible fashion.

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
