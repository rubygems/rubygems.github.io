---
title: May 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in May.

## RubyGems News

This month in RubyGems, we released new versions for Bundler [`2.2.18`, `2.2.19`](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2218-may-25-2021) and RubyGems [`3.2.18`, `3.2.19`](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3218--2021-05-25) and focused on shipping a definitive fix for the dependency confusion issues that have been affecting Bundler for years. We finally managed to provide a fix ([#4609](https://github.com/rubygems/rubygems/pull/4609)) with `bundler 2.2.18`.

In addition to that, RubyGems saw several bug fixes and updates this month, some of which include the following:

- fixed a resolution issue where gems were being unintentionally removed from the lockfile - [#4580](https://github.com/rubygems/rubygems/pull/4580).
- shipped a fix in RubyGems to improve the reproducibility of building packages - [#4610](https://github.com/rubygems/rubygems/pull/4610).
- shipped other minor improvements, and some internal changes to our development environment like moving away from `minitest` in favor of `test-unit`.

Checkout [RubyGems](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3218--2021-05-25) and [Bundler](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2218-may-25-2021) for the full changelog of the new versions shipped this month! 

In May, Rubygems gained [132 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-05-01%7D...master@%7B2021-05-31%7D), contributed by 10 authors. There were 2419 additions and 2118 deletions across 228 files.

## RubyGems.org News

In May, RubyGems.org saw several bug fixes and updates, some of which include the following:

- investigated and fixed cache poisoning by using `x-forwarded-scheme` header. The issue was reported on HackerOne.
- set form-action and frame-ancestor CSP policy to mitigate bypass of X-Frame-Options using a proxy  - [#2718](https://github.com/rubygems/rubygems.org/pull/2718).
- researched verified publisher implementation for package manager - [#2698](https://github.com/rubygems/rubygems.org/pull/2698#issuecomment-846356370).
- added copy link to recovery code page and disabled continue link - [#2717](https://github.com/rubygems/rubygems.org/pull/2717).
- tested upgrade of Elasticsearch 7 on staging environment and estimated downtime requirements.

For this month, Rubygems.org gained [23 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-05-01%7D...master@%7B2021-05-31%7D), contributed by 3 authors. There were 155 additions and 100 deletions across 11 files.

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

## Related News

Here we outline additional exciting updates made to other projects in the Ruby Ecosystem.

We launched `gem dependencies` in the [Ruby Toolbox](https://github.com/rubytoolbox/rubytoolbox) Project Page. You can now explore the dependencies for each project on RubyGems. 

A specialty of this feature is that right next to the dependency you can also find the corresponding project health indicators so if you're looking at a library you can also see an indication of the status of it's dependencies as well.

Read more about this on the upcoming monthly update. You can sign up to [receive updates every month as soon as they are released!](https://www.getdrip.com/forms/6239290/submissions)

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
