---
title: August 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in August.

## RubyGems News

This month in RubyGems, We released a new version of RubyGems - _[3.2.36](https://github.com/rubygems/rubygems/releases/tag/v3.2.26)_. This release features experimental support for the `RUBYGEMS_GEMDEPS` environment variable, which allows using locked versions of executables without the need of prepending `bundle exec` to them. It also fixes an issue with the loading of RubyGems plugin and improves reporting of errors inside operating system customizations of RubyGems.

On Bundler, we released Bundler [2.2.26](https://rubygems.org/gems/bundler/versions/2.2.26), which includes several small fixes and improvements further [details in the changelog](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2226-august-17-2021).

In August, Rubygems gained [133 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-08-01%7D...master@%7B2021-08-31%7D), contributed by 11 authors. There were 1299 additions and 896 deletions across 192 files.

## RubyGems.org News

In August, RubyGems.org saw several bug fixes and updates, some of which include the following:

- drafted a PR for Ruby 3 update to evaluate changes required - [#2760](https://github.com/rubygems/rubygems.org/pull/2760).
- reduced Docker build time up to 5 minutes by caching `bundle install` command -[#2761](https://github.com/rubygems/rubygems.org/pull/2761).
- updated Rubocop as part of the updates for Ruby 3 - [#2768](https://github.com/rubygems/rubygems.org/pull/2768).
- debugged increased CPU usage on Postgres and added rate limit on the `reverse_dependencies` page - [#2754](https://github.com/rubygems/rubygems.org/pull/2754).
- contacted Zendesk support about spam mails and enabled beta version of `Rspamd` spam filter system.
- evaluated performance impact on our database in `Gem Signature Verification` PR - [#2444](https://github.com/rubygems/rubygems.org/pull/2444).

This month, Rubygems.org gained [34 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-08-01%7D...master@%7B2021-08-31%7D), contributed by 3 authors. There were 135 additions and 129 deletions across 14 files.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
