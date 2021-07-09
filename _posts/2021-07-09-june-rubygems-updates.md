---
title: June 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in June.

## RubyGems News

This month in RubyGems, we released new versions for **Bundler `2.2.20` and `2.2.21`** and **RubyGems `3.2.20` and `3.2.21`**. The release for RubyGems included a security fix contributed by [Aditya](https://github.com/sonalkr132), and Bundler release ships with several fixes and improvements.

We also worked on improving the seamless migration of insecure lock files by automatically dealing with them when possible instead of printing a warning and still installing them - [#4647](https://github.com/rubygems/rubygems/pull/4647) and [#4683](https://github.com/rubygems/rubygems/pull/4683).

We also kept discussing how to improve the experience when bundler needs `sudo` access, making the behaviour less upsetting for our users -[#4031](https://github.com/rubygems/rubygems/issues/4031).

In June, Rubygems gained [98 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-06-01%7D...master@%7B2021-06-30%7D), contributed by 10 authors. There were 993 additions and 480 deletions across 231 files.

## RubyGems.org News

In June, RubyGems.org saw several bug fixes and updates, some of which include the following:

- updated ElasticSearch to version 7.
- refactored and deployed autocomplete search feature - [#2047](https://github.com/rubygems/rubygems.org/pull/2047).
- resolved reports with pending bounties on HackerOne.
- implemented platform verification in `gemspec` to avoid potential RCE - [#4667](https://github.com/rubygems/rubygems/pull/4667)

This month, Rubygems.org gained [25 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-06-01%7D...master@%7B2021-06-30%7D), contributed by 7 authors. There were 490 additions and 169 deletions across 30 files.

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
