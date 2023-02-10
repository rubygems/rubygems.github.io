---
title: January 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January.

## RubyGems News

This month in [RubyGems](https://github.com/rubygems/rubygems), we released the following versions for RubyGems [3.4.2](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#342--2023-01-01), [3.4.3](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#343--2023-01-06), [3.4.4](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#344--2023-01-16), [3.4.5](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#345--2023-01-21), [3.4.6](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#345--2023-01-21) and Bundler [2.4.2](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#242-january-1-2023), [2.4.3](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#243-january-6-2023), [2.4.4](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#244-january-16-2023), [2.4.5](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#245-january-21-2023), [2.4.6](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#246-january-31-2023) that included:

- allowed require decorations be disabled - [#6319](https://github.com/rubygems/rubygems/pull/6319).
- sped up resolution by properly merging incompatibility ranges - [#6215](https://github.com/rubygems/rubygems/pull/6215).
- turned `--ext` option of bundle gem into a String. and deprecated usage without explicit value - [#6144](https://github.com/rubygems/rubygems/pull/6144).
- enhanced `bundle open` command to allow opening subdir/file for a gem - [#6146](https://github.com/rubygems/rubygems/pull/6146).

In addition to that, we made the following improvements and fixes(see the changelog for more information:

- fixed flakiness on `Ruby 3.2` and Windows and speed up some specs - [#6321](https://github.com/rubygems/rubygems/pull/6321).
- updated the list of `SPDX` licence identifiers - [#6310](https://github.com/rubygems/rubygems/pull/6310).
- added tests for old lockfile with new ruby version - [#6317](https://github.com/rubygems/rubygems/pull/6317).
- fixed packages for external platforms being introduced in lockfile when Bundler retries resolution - [#6285](https://github.com/rubygems/rubygems/pull/6285).

In January, RubyGems gained [158 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-01-01%7D...master@%7B2023-01-31%7D), contributed by 14 authors. There were 3,450 additions and 2,535  deletions across 112 files.


## RubyGems.org News

In January, RubyGems.org saw several bug fixes and updates, some of which include the following:

- added Webauthn Verification authenticate endpoint - [#3331](https://github.com/rubygems/rubygems.org/pull/3331).
- moved browser tests to standard Rails system tests- [#3374](https://github.com/rubygems/rubygems.org/pull/3374).
- added patch for mfa_expires_at edge condition - [#3357](https://github.com/rubygems/rubygems.org/pull/3357).
- used simplified version of GitHub button JS. - [#3348](https://github.com/rubygems/rubygems.org/pull/3348).
- introduced timeout on OTP page - [#3325](https://github.com/rubygems/rubygems.org/pull/3325).
- added telemetry to capture MFA login durations - [#3376](https://github.com/rubygems/rubygems.org/pull/3376).

This month, RubyGems.org gained [86 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-01-01%7D...master@%7B2023-01-31%7D), contributed by 12 authors. There were 584 additions and 395 deletions across 46 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@composerinteralia](https://github.com/composerinteralia) Daniel Colson
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@yoka](https://github.com/yoka) Jesse Ikonen
- [@simi](https://github.com/simi?tab=overview&from=2023-02-01&to=2023-02-09) Josef Šimánek
- [@technicalpickles](https://github.com/technicalpickles) Josh Nichols
- [@jdufresne](https://github.com/jdufresne) Jon Dufresne
- [@markdoliner](https://github.com/markdoliner) Mark Doliner
- [@matsadler](https://github.com/matsadler) Mat Sadler
- [@flavorjones](https://github.com/flavorjones) Mike Dalessio
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@tbates-redarc](https://github.com/tbates-redarc) Tim Bates
- [@fxn](https://github.com/fxn) Xavier Noria

### Contributors to RubyGems.org:
- [@sonalkr132](https://github.com/sonalkr132) Aditya Prakash
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@simi](https://github.com/simi?tab=overview&from=2023-02-01&to=2023-02-09) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester
- [@mercedesb](https://github.com/mercedesb) Mercedes
- [@arunagw](https://github.com/arunagw) Arun Agrawal
- [@segiddins](https://github.com/segiddins) Samuel Giddins

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
