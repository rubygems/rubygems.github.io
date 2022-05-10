---
title: March 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in March.

## RubyGems News

This month, we released new versions of RubyGems [3.3.9](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#339--2022-03-09), [3.3.10](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3310--2022-03-23) and Bundler [2.3.9](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#239-march-9-2022), [2.3.10](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2310-march-23-2022).

The following is a non-exhaustive list of the improvements included in the above releases (see the changelog for further information):

- worked on a small regression in Bundler 2.3.7 and released a fix with Bundler 2.3.9 - [#5386](https://github.com/rubygems/rubygems/pull/5386).
- merged some improvements to  RDoc  documentation - [#5396](https://github.com/rubygems/rubygems/pull/5396), [#5398](https://github.com/rubygems/rubygems/pull/5398), [#5399](https://github.com/rubygems/rubygems/pull/5399).
- enabled `net-http-persistent` to get in sync with the version we use in vendor - [#5394](https://github.com/rubygems/rubygems/pull/5394).
- merged a PR that reports Github Actions as a CI provider within the user agent string by checking the `GITHUB_ACTIONS` env variable - [#5400](https://github.com/rubygems/rubygems/pull/5400).

In March, RubyGems gained [145 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-03-01%7D...master@%7B2022-03-31%7D), contributed by 14 authors. There were 1,622 additions and 167 deletions across 88 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- increased `GEM_REQUEST_LIMIT` to fix the 422 response with `aws gem install` - [#2991](https://github.com/rubygems/rubygems.org/pull/2991).
- added `Toxiproxy` to `docker-compose` in host network mode - [#2981](https://github.com/rubygems/rubygems.org/pull/2981).
- refactored `link_to_github` code - [#2980](https://github.com/rubygems/rubygems.org/pull/2980).
- fixed deprecations recording when running tests - [#2979](https://github.com/rubygems/rubygems.org/pull/2979).

In March, RubyGems.org gained [38 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-03-01%7D...master@%7B2022-03-31%7D), contributed by 6 authors. There were 811 additions and 531 deletions across 30 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
