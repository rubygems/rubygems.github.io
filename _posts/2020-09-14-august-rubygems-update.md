---
title: August 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## RubyGems News

This Month, we made improvements to the [man page generation process](https://github.com/rubygems/rubygems/pull/3923) to ease contribution to the Bundler documentation. We also and reviewed and merged some PRs from various contributors. We're thankful for our supportive community. <3

We coordinated with the Ruby core team about versioning default gems in ([#3937](https://github.com/rubygems/rubygems/pull/3937) and [#3938](https://github.com/rubygems/rubygems/pull/3938)), as well as [fixing an issue with configuration priority](https://github.com/rubygems/rubygems/pull/3933).

We also deprecated [`bundle cache --all`](https://github.com/rubygems/rubygems/pull/3932) in favor of explicitly configuring `bundle config set --local cache_all true`.

As always, we continue to fix bugs, review and merge PR and follow up with issue triaging.

In total, [Rubygems](https://github.com/rubygems) gained [71 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-08-01%7D...master@%7B2020-08-31%7D), contributed by 15 authors. There were 639 additions and 262 deletions across 173 files.


## RubyGems.org News

In August, we added a webhook configuration to Slack, set up Terraform modules sending Slack notifications from AWS Lambda, and completed the following tests, improvements and fixes:  

* tested and deployed a PR for [blocking -/_ variations of the gem names](https://github.com/rubygems/rubygems.org/pull/2341) -- which are most commonly abused by malicious actors -- and fixing SQL query missing index.
* debugged failing rspec failing builds and [updated  backfill required_rubygems_version task to required_ruby_version](https://github.com/rubygems/rubygems.org/pull/2474)
* [added basic auth to staging.rubygems.org](https://github.com/rubygems/rubygems.org/pull/2486), [loaded production dump](https://github.com/rubygems/rubygems.org/pull/2489) and did a test run of rake task to backfill required_ruby_versions.
* ran rake task to backfill required_ruby_versions on production, regenerate versions.list file, verify info_checksum mismatch and purge info keys on memcache and fastly. This will ensure bundle install has more successful runs on more than 30k versions, instead of throwing `Gem::RuntimeRequirementNotMetError` when required ruby version was not satisfied.
* add tf module for cloudwatch alerts on alb, ec, es, rds and sqs. set alert threshold as per trends rubygems-terraform#3
* reduced docker image size of rubygems.org by 100 MB by [removing sass-rails from the production image](https://github.com/rubygems/rubygems.org/pull/2478) 
* resolved tickets on help.rubygems.org

This month, [Rubygems.org](https://github.com/rubygems.org) gained [74 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-08-01%7D...master@%7B2020-08-31%7D), contributed by 6 authors. There were 225 additions and 118 deletions across 23 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
