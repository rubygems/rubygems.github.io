---
title: June 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in June.


## RubyGems News

In June, RubyGems saw significant improvements on Bundler and RubyGems development. We worked on synchronizing the latest versions of both libraries with ruby-core, and fixed issues that came up. We also [enforced our ruby-core workflow](https://github.com/rubygems/rubygems/pull/3725) to try to prevent further tedious integrations with ruby-core in the future by catching issues early and minimizing the back and forth of patches between upstream and downstream.

We changed [bundler specs to raise by default when any subcommand fails](https://github.com/rubygems/rubygems/pull/3685). This action helped reveal two bugs (which we of course, fixed!). We've adapted bundler release tasks to a [new repository layout](https://github.com/rubygems/rubygems/pull/3703) and now have the changelog draft up-to-date.


We've also implemented a fix to [stop soft-validating gemspecs](https://github.com/rubygems/rubygems/pull/3668) (e.g. giving validations that only warn) except for in gem-authoring contexts. We also added a [slack notification to the maintainers channel](https://github.com/rubygems/rubygems/pull/3689) that triggers whenever the  `ruby-head` builds starts failing.

We [simplified our CI Workflows](https://github.com/rubygems/rubygems/pull/3769) and did some final cleanup PRs related to CI failures on `jruby`.

Lastly, onto great news for the month: we released Bundler 2.2.0.rc.1! 🎉

Outside of these major highlights, we continue to fix bugs, review PRs, improve our documentation, cleanup test suites, and continue our usual ongoing maintenance.

In total, [RubyGems](https://github.com/rubygems) gained [243 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-06-01%7D...master@%7B2020-06-30%7D), contributed by 15 authors. There were 3003 additions and 2432 deletions across 313 files.

## RubyGems.org News

This month, we added terraform module for RDS monitors and added alerts on `rubgems-production`, `rubygems-staging` and `shipit` instances. We followed up with fixes on RubyGems.org that have now been deployed and verified! We also debugged failed delayed jobs in production and created a [fix for issues we found with regex validation with user email.](https://github.com/rubygems/rubygems.org/pull/2389)


In addition to that, We made a PR to [send mail update confirmation when a user changes their email address](https://github.com/rubygems/rubygems.org/pull/2392),  added a RubyGems.org guide for rate limits, and made the following improvements:

+ increased Strict-Transport-Security max-time to ensure HTTPS-only access
- updated [rake task to remove duplicate runtime dependencies](https://github.com/rubygems/rubygems.org/pull/2382)
- updated `versions.list` [source location from bundler-api to s3.](https://github.com/rubygems/rubygems.org/pull/2380) and added [cronjob to update the file monthly.](https://github.com/rubygems/rubygems.org/pull/2403)

- ran rake tasks related to `compact_index` which enabled bundler to make fewer requests to our server when installing some gems and fixed install of gems with multiple Ruby or Rubygems requirements

- updated correct checksum task to use non-caching info_checksum calc, rerun the task, and expire info cache of gems changed from production.

- [rebased and updated API keys scope PR](https://github.com/rubygems.org/pull/1962)

- updated and deployed rate limit changes to fix merge conflict and use test helpers. [rubygems.org#2330](https://github.com/rubygems.org/pull/2330)
- reset a few leaked API keys and send mail to affected users

As always, we continued to fix bugs, and provide help on [help.rubygems.org](https://help.rubygems.org) and ongoing support work.

In June, [RubyGems.org](https://github.com/rubygems.org) gained [119 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-06-01%7D...master@%7B2020-06-30%7D), contributed by 10 authors. There were 1256 additions and 489 deletions across 86 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
