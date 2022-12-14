---
title: November 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in November.

## RubyGems News
This month in RubyGems, we released new versions of RubyGems [3.3.25](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3325--2022-11-02), [3.3.26](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3326--2022-11-16) and Bundler [2.3.25](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2325-november-2-2022), [2.3.26](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2326-november-16-2022).

The following improvements and fixes are also included in these releases (see the changelog for more information):

- improve some test times and fix warning by not installing documentation. - [#6074](https://github.com/rubygems/rubygems/pull/6074).
- fixed broken link in `bundle-platform` man page - [#6071](https://github.com/rubygems/rubygems/pull/6071).
- added permission restrictions to GitHub actions - [#6081](https://github.com/rubygems/rubygems/pull/6081).
- removed reference to RVM documentation in the message returned when you run `bundler outdated` - [#6083](https://github.com/rubygems/rubygems/pull/6083).

```bash
$ bundle outdated
Could not load OpenSSL.
You must recompile Ruby with OpenSSL support or change the sources in your Gemfile from 'https' to 'http'. Instructions for compiling with OpenSSL using
RVM are available at rvm.io/packages/openssl.
```
- added a specification to ensure that global gemspecs do not confuse Bundler - [#6086](https://github.com/rubygems/rubygems/pull/6086).
- fixed issue that occurs when a lockfile gem does not resolve on the current platform - [#6070](https://github.com/rubygems/rubygems/pull/6070).
- updated the docs for `gemfile` man page - [#6007](https://github.com/rubygems/rubygems/pull/6007).

![Gemfile Man](https://i.imgur.com/veOa0z4.png)

- improved resolution messages when some platform gems are missing - [#6068](https://github.com/rubygems/rubygems/pull/6068).
- added `asdf`, a ruby version manager option that contributors can utilize - [#6066](https://github.com/rubygems/rubygems/pull/6066).
- upgraded `rb-sys` to version 0.9.37 - [#6047](https://github.com/rubygems/rubygems/pull/6047).

In November, RubyGems gained [116 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-11-01%7D...master@%7B2022-11-31%7D), contributed by 15 authors. There were 3,719 additions and 3,370 deletions across 141 files.

## RubyGems.org News

In November, RubyGems.org saw several bug fixes and updates, some of which include the following:

- added tests to cover scenarios where an API key is not saved after being created or updated - [#3280]( https://github.com/rubygems/rubygems.org/pull/3280).
- merged a PR to avoid filling the template with the gem name automatically - [#6093](https://github.com/rubygems/rubygems/pull/6093).
- merged a PR to protect the a gem placeholder name to prevent misuse of the package name.- [#3275](
https://github.com/rubygems/rubygems.org/pull/3275).
- used `DelayedJob` as an active job adapter - [#3266](https://github.com/rubygems/rubygems.org/pull/3266).
- increased the maximum size of the memcached entry to 2MB - [#3260](https://github.com/rubygems/rubygems.org/pull/3260).
- added `ossf/scorecards` to assist in detecting non-secure configurations related to GitHub and GitHub Actions - [#3258](https://github.com/rubygems/rubygems.org/pull/3258).
- updated to the latest versions of RubyGems (3.3.25) and Bundler (2.3.25) - [#3250](https://github.com/rubygems/rubygems.org/pull/3250).

In November, RubyGems.org gained [44 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-11-01%7D...master@%7B2022-11-31%7D), contributed by 5 authors. There were 107 additions and 36 deletions across 9 files.

## Related News

Here we outline additional exciting updates made to other projects in the Ruby Ecosystem.

- This month, We released a new version of the [Ruby Central News](https://rubycentral.org/news/) page.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month, Your contributions are greatly appreciated, and we are grateful for your support.

Contributors to RubyGems:
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez,
- [@peterzhu2118](https://github.com/peterzhu2118) Peter Zhu, 
- [@ianks](https://github.com/ianks) Ian Ker-Seymer,
- [@simi](https://github.com/simi) Josef Šimánek,
- [@syohex](https://github.com/syohex) Shohei YOSHIDA,
- [@Bo98](https://github.com/Bo98) Bo Anderson,
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA,
- [@gustavothecoder](https://github.com/gustavothecoder) Gustavo Ribeiro,
- [@JuanVqz](https://github.com/JuanVqz) Juan Vásquez,
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada

Contributors to RubyGems.org:
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA,
- [@simi](https://github.com/simi) Josef Šimánek,
- [@tnir](https://github.com/tnir) Takuya N,
- [@sonalkr132](https://github.com/sonalkr132) Aditya Prakash

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
