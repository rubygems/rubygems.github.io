---
title: January 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---


Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January.

## RubyGems News

This month in [RubyGems](https://github.com/rubygems/rubygems), we released RubyGems [3.4.2](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#342--2023-01-01), [3.4.3](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#343--2023-01-06), [3.4.4](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#344--2023-01-16), [3.4.5](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#345--2023-01-21), [3.4.6](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#346--2023-01-31) and Bundler [2.4.2](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#242-january-1-2023), [2.4.3](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#243-january-6-2023), [2.4.4](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#244-january-16-2023), [2.4.5](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#245-january-21-2023), [2.4.6](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#246-january-31-2023) with the following updates:

- allowing require decorations be disabled - [#6319](https://github.com/rubygems/rubygems/pull/6319).
- properly merging incompatibility ranges to speed up resolution - [#6215](https://github.com/rubygems/rubygems/pull/6215).
- turning the `--ext` option of bundle gem into a string and deprecating usage without explicit value - [#6144](https://github.com/rubygems/rubygems/pull/6144).
- enhancing `bundle open` command to allow opening subdir/file for a gem - [#6146](https://github.com/rubygems/rubygems/pull/6146).

In addition to that, we made the following improvements and fixes (see the changelog for more information):

- fixed flakiness on `Ruby 3.2` and Windows and sped up some specs - [#6321](https://github.com/rubygems/rubygems/pull/6321).
- updated the list of `SPDX` license identifiers - [#6310](https://github.com/rubygems/rubygems/pull/6310).
- added tests for old lockfiles with new ruby versions - [#6317](https://github.com/rubygems/rubygems/pull/6317).
- Stopped packages for external platforms from being introduced in the lockfile in instances when Bundler retries resolution - [#6285](https://github.com/rubygems/rubygems/pull/6285).

In January, RubyGems gained [158 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-01-01%7D...master@%7B2023-01-31%7D), contributed by 14 authors. There were 3,450 additions and 2,535  deletions across 112 files.


## RubyGems.org News

In January, RubyGems.org saw several bug fixes and updates, some of which include:

- an added Webauthn Verification authenticate endpoint - [#3331](https://github.com/rubygems/rubygems.org/pull/3331).
- moving browser tests to standard Rails system tests- [#3374](https://github.com/rubygems/rubygems.org/pull/3374).
- an added patch for the mfa_expires_at edge condition - [#3357](https://github.com/rubygems/rubygems.org/pull/3357).
- a simplified version of GitHub button JS. - [#3348](https://github.com/rubygems/rubygems.org/pull/3348).
- the addition of telemetry to capture MFA login durations - [#3376](https://github.com/rubygems/rubygems.org/pull/3376).
- introducing a timeout after inactivity on the OTP page - [#3325](https://github.com/rubygems/rubygems.org/pull/3325).

![OTP Timeout](https://res.cloudinary.com/lauragift/image/upload/w_650,h_400/v1676537149/211091850-84d7f2e3-ee43-44bd-928e-1051130c3ede_vq4tfk.png)

This month, RubyGems.org gained [86 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-01-01%7D...master@%7B2023-01-31%7D), contributed by 12 authors. There were 584 additions and 395 deletions across 46 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@composerinteralia](https://github.com/composerinteralia) Daniel Colson
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@yoka](https://github.com/yoka) Jesse Ikonen
- [@simi](https://github.com/simi) Josef Šimánek
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
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester
- [@mercedesb](https://github.com/mercedesb) Mercedes
- [@arunagw](https://github.com/arunagw) Arun Agrawal
- [@segiddins](https://github.com/segiddins) Samuel Giddins

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
