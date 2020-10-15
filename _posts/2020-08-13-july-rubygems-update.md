---
title: July 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in July.

## RubyGems News

In July, we improved [Bundler's Issue Template](https://github.com/rubygems/rubygems/pull/3784) for our maintainers and contributors. Along with that, we worked on [improving performance optimizations](https://github.com/rubygems/rubygems/pull/3793) and we simplified our CI Workflow to make all [Bundler testing combinations easier to maintain.](https://github.com/rubygems/rubygems/pull/3769)

We made improvements and cleaned up PRs related to JRuby ([#3770](https://github.com/rubygems/rubygems/pull/3770), [#3771](https://github.com/rubygems/rubygems/pull/3771), [#3774](https://github.com/rubygems/rubygems/pull/3774)) and merged a follow up [PR to have a clean rubocop on new gems.](https://github.com/rubygems/rubygems/pull/3765)

[We implemented `gem update --system --silent`](https://github.com/rubygems/rubygems/pull/3789) and configured RubyGems branch protection. We've also fixed `rake release` abortion in the following instances:

* [when the credentials file is missing](https://github.com/rubygems/rubygems/pull/3783)
* when a deprecation warning is triggered in the Github API
* when all [local tags are pushed instead of only the release tag.](https://github.com/rubygems/rubygems/pull/3785)

In addition, we proposed a [new  workflow for managing our changelog](https://github.com/rubygems/rubygems/pull/3792) and merged more PRs integrating this workflow. [#3808](https://github.com/rubygems/rubygems/pull/3808), [#3798](https://github.com/rubygems/rubygems/pull/3798), [#3807](https://github.com/rubygems/rubygems/pull/3807).

As always, we continue to fix bugs, review PRs, follow up with issues and continue ongoing maintenance.

This month, [RubyGems](https://github.com/rubygems) gained [227 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-07-01%7D...master@%7B2020-07-31%7D), contributed by 15 authors. There were 146 additions and 170 deletions across 1,070 files.

## RubyGems.org News

RubyGems.org saw a lot of activity this month with 30 merged pull requests, including a [fix for `rack_attack` test failing on Travis with 429.](https://github.com/rubygems/rubygems.org/pull/2451)

We updated our sendgrid account subscription to allocate dedicated IP, and setup rDNS and gmail postmaster. We filed a support ticket on [Fastly](fastly.com) for an IPv6 connection issue, searched honeycomb’s [RubyGems.org](https://rubygems.org/) dataset for API keys and disabled their fastly integration, and sent an email notification about it to our users.

We've migrated to sidecar nginx proxy running on EKS cluster from legacy SPOF nginx running on a dedicated host. We also updated our EKS cluster to v1.16.

Over on [help.rubygems.org](help.rubygems.org) we resolved tickets, fixed a TypeError on the signup page, and removed unused daemons gems from the Gemfile.

In addition to those improvements, we completed the following:

* searched 22 months of logs from s3 and [created a new email](https://github.com/rubygems/rubygems.org/pull/2463) to [remediate a possible API key leak](https://blog.rubygems.org/2020/07/28/api-key-leak.html).

* debugged Outlook marking RubyGems.org mails as spam and filed a support ticket for shared IP update.

* worked on a PR for client side support of API key scopes and updated the server-side PR.

* cleaned up failed jobs with `retry/delete`.

* ran `rake task` to delete dangling dependency reports and set `unresolved_name` manually.

* fixed `NoMethodError` on transitive dependency page.

* removed unused dependencies from dockerfile [#2449](https://github.com/rubygems/rubygems.org/pull/2449)


In total, [RubyGems.org](https://github.com/rubygems.org) gained [72 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-07-01%7D...master@%7B2020-07-31%7D), contributed by 8 authors. There were 335 additions and 111 deletions across 53 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
