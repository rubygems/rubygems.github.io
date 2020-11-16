---
title: October 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems, Ruby Toolbox and RubyGems.org in September.

## RubyGems News

In October we released a new Bundler version --- **`2.2.0.rc.2`**. We also upgraded Bundler's & Rubygems' vendored Molinillo to **`0.7.0`**  (it's latest release). - [#3402](https://github.com/rubygems/rubygems/pull/3402), [#3388](https://github.com/rubygems/rubygems/pull/3388). 

We also made the following changes and improvements:
* fixed an [issue with the `specific_platform` setting.](https://github.com/rubygems/rubygems/pull/4022) 
* merged a PR that stops changing the CWD for building extensions, which should allow concurrent extension compilation without any contention. - [#3498](https://github.com/rubygems/rubygems/pull/3498)
* worked on PRs to improve independence between test and lib code (simplifies and helps packagers), and added some changes to improve specs.
* added improvements to require more default gems lazily.
* fixed an issue with help commands when Bundler has been installed by `ruby-core` installer and `man` is not available. - [#3997](https://github.com/rubygems/rubygems/pull/3997)
* wrapped up a PR to allow installing plugins from local paths. - [#4020](https://github.com/rubygems/rubygems/pull/4020)
* fixed daily Bundler CI by marking the new `pathname` default gem as unsupported. - [#4029](https://github.com/rubygems/rubygems/pull/4029)
* fixed a `Kernel.warn` stackoverflow. - [#3987](https://github.com/rubygems/rubygems/pull/3987)
* improved the deprecation path for gem query. - [#4021](https://github.com/rubygems/rubygems/pull/4021)
* fixed issues with Bundler not loading RubyGems plugins in `$LOAD_PATH` locations, which was affecting some version managers. - [#3534](https://github.com/rubygems/rubygems/pull/3534)

As always, we continue responding to RubyGems & Bundler issues and PRs, doing issue triage on both old and new issues, and reducing the number of open tickets.

In October, Rubygems gained [143 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-10-01%7D...master@%7B2020-10-31%7D), contributed by 11 authors. There were 2889 additions and 1705 deletions across 889 files.

## RubyGems.org News

This month we implemented a [bulk update to RubyGem downloads count](https://github.com/rubygems/rubygems.org/pull/2527) to reduce the processing time for `FastlyLogProcessor` by about 95%, up to 40 seconds. We studied an old HackerOne Report and proposed a solution for it that will get implemented into RubyGems.org. 

We also made the following changes and improvements:

* imported Fastly rubygems.org production configuration to Terraform. - [#4](https://github.com/rubygems/rubygems-terraform/pull/4) 
* updated Fastly `vcl` to unset X-Forwarded-Host from requests to fix a HO report. - [#5](https://github.com/rubygems/rubygems-terraform/pull/5)
* added regex whitelist for URL on honeycomb logs export to ensure we don't inadvertently send any sensitive information. - [#7](https://github.com/rubygems/rubygems-terraform/pull/7)
* fixed total count shown on search pagination. - [#2526](https://github.com/rubygems/rubygems.org/pull/2526)
* rebased and updated a PR to separate the edit profile and account settings, making options like MFA registration easier to find. - [#2537](https://github.com/rubygems/rubygems.org/pull/2537)
* updated `staging.rubygems.org` to support **TLS 1.3** as recommended by the most recent TLS documentation of Fastly.
* created a support ticket on Fastly to request a limit increase on TLS certificates and enable the limited offering of GlobalSign certificates.
* updated **DMARC** record of rubygems.org to use Slack group and Postmarkapp.
* replyed to support tickets and google group threads.
 
Finaly, we deployed an option to review changes thanks to [@mensfeld](https://github.com/mensfeld); users can now compare differences between releases. 

In total, Rubygems.org gained [46 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-10-01%7D...master@%7B2020-10-31%7D), contributed by 8 authors. There were 694 additions and 442 deletions across 63 files.

## Gemstash News

This month we made a couple of improvements to the Gemstash project documentation, We added [documentation about Gemstash](https://github.com/rubygems/guides/pull/269) and [documentation recommending Gemstash instead of `gem server`](https://github.com/rubygems/guides/pull/269) because we're going to deprecate gem server it's not recommended to keep it in the documentation.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.tation, writing and/or updating documentation, and bug triage.
