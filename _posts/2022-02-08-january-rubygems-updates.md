---
title: January 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in January.

## RubyGems News

This month in RubyGems, we released new versions for RubyGems [3.3.5](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#335--2022-01-12), [3.3.6](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#336--2022-01-26) and Bundler [2.3.5](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#235-january-12-2022), [2.3.6](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#236-january-26-2022).

The following is a non-exhaustive list of the improvements included in the above releases (see changelogs for more details):

- merged tentative support for `--enable-load-relative` Ruby configuration flag in our bin stubs to fix some `gem install` issues on Windows - [#2929](https://github.com/rubygems/rubygems/pull/2929).
- published a blog post about [Bundler Version Switching](https://bundler.io/blog/2022/01/23/bundler-v2-3.html) and released documentation for Bundler 2.3 on bundler.io.
- fixed regression with old marshaled specs having null `required_rubygems_version` - [#5291](https://github.com/rubygems/rubygems/pull/5291). 

In January, Rubygems gained [113 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-01-01%7D...master@%7B2022-01-31%7D), contributed by 14 authors. There were 1,623 additions and 864 deletions across 139 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- enabled `Rails 6.1` defaults - [#2917](https://github.com/rubygems/rubygems.org/pull/2917).
- added `rake task` to send [ownership request notification](https://github.com/rubygems/rubygems.org/commit/4cb656a9cc342af171379915835a977c3e88ea91).
- verified [session for Gem owners](https://github.com/rubygems/rubygems.org/commit/8368872dea4907d9c39b3f5125f4ea7b17df1232) before showing adoptions page.
- published [RubyGems adoptions blog post](https://blog.rubygems.org/2022/01/19/rubygems-adoptions.html).

In January, Rubygems.org gained [48 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-01-01%7D...master@%7B2022-01-31%7D), contributed by 5 authors. There were 443 additions and 121 deletions across 37 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
