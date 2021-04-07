---
title: March 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in March.

## RubyGems News

In March, we released new versions for RubyGems [(from 3.2.12 to 3.2.15)](https://rubygems.org/gems/rubygems-update/versions) and Bundler [(from 2.2.12 to 2.2.15)](https://rubygems.org/gems/bundler/versions). Additionally, we worked on making the client tools more secure, and making Git sources faster and more disk efficient.

For this Month, [RubyGems](https://github.com/rubygems/rubygems) gained [150 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-03-01%7D...master@%7B2021-03-31%7D), contributed by 10 authors. There were 2124 additions and 753 deletions across 107 files.

## RubyGems.org News

This month in RubyGems.org, we [enabled Rails v6.0 defaults](https://github.com/rubygems/rubygems.org/pull/2674) and [deployed an update to Rails 6.1.3](https://github.com/rubygems/rubygems.org/pull/2675).

RubyGems.org saw several bug fixes and updates this month, some of which include the following:

- fixed upload of test coverage report to code climate. -  [#2673](https://github.com/rubygems/rubygems.org/pull/2673)
- made users' emails private by default and updated existing accounts to hide emails. - [#2663](https://github.com/rubygems/rubygems.org/pull/2663)
- added text-only versions of emails to support more email clients. - [#2652](https://github.com/rubygems/rubygems.org/pull/2652)
- upgraded ES instance type and storage, and added a strict rate limit on the Search API endpoint. - [#2665](https://github.com/rubygems/rubygems.org/pull/2665)
- updated nginx to latest mainline to fix `cache file .. has too long header` issue that landed in `v1.19.3`. - [#2660](https://github.com/rubygems/rubygems.org/pull/2660)
- replied to support tickets on Zendesk and Tenderapp.

For this Month, [RubyGems.org](https://github.com/rubygems/rubygems.org) gained [60  new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-03-01%7D...master@%7B2021-03-31%7D), contributed by 8 authors. There were 546 additions and 515 deletions across 48 files.

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
