---
title: March 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in March.

## RubyGems News

This month in RubyGems, we released RubyGems [3.4.8](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#348--2023-03-08), [3.4.9](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#349--2023-03-20), [3.4.10](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3410--2023-03-27) and Bundler [2.4.8](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#248-march-8-2023), [2.4.9](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#249-march-20-2023), and [2.4.10](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2410-march-27-2023).

The following improvements and fixes are included in these releases (see the changelog for more information):

- enhanced`tar` file functionality to support future server-side gem content navigation features - [#6494](https://github.com/rubygems/rubygems/pull/6494), [#6476](https://github.com/rubygems/rubygems/pull/6476), [#6390](https://github.com/rubygems/rubygems/pull/6390).
- improved auto-healing of corrupted lockfiles and fixed some related regressions - [#6400](https://github.com/rubygems/rubygems/pull/6400), [#6423](https://github.com/rubygems/rubygems/pull/6423), [#6552](https://github.com/rubygems/rubygems/pull/6552), [#6540](https://github.com/rubygems/rubygems/pull/6540), [#6532](https://github.com/rubygems/rubygems/pull/6532), [#6495](https://github.com/rubygems/rubygems/pull/6495).
- fixed resolution edge cases - [#6330](https://github.com/rubygems/rubygems/pull/6330), [#6442](https://github.com/rubygems/rubygems/pull/6442), [#6441](https://github.com/rubygems/rubygems/pull/6441), [#6535](https://github.com/rubygems/rubygems/pull/6535).
- added support of OTP fallback when OTP and WebAuthn are enabled from the CLI - [#6523](https://github.com/rubygems/rubygems/pull/6523).
- unified RubyGems and Bundler Rubocop rules - [#6487](https://github.com/rubygems/rubygems/pull/6487).

Other improvements we worked on during this month that weren’t included in the March release are:

- fixed the `gems.rb` lockfile for Bundler version lookup in the template file - [#6413](https://github.com/rubygems/rubygems/pull/6413).
- added gem version promoter specs - [#6537](https://github.com/rubygems/rubygems/pull/6537).
- added a better suggestion when `bundler/setup` fails due to missing gems and Gemfile is not the default - [#6428](https://github.com/rubygems/rubygems/pull/6428).
- removed an unhelpful side-effect of `GEM_HOME` configuration in some tests - [#6461](https://github.com/rubygems/rubygems/pull/6461).

In March, RubyGems gained [332 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-03-01%7D...master@%7B2023-03-31%7D), contributed by 14 authors. There were 4,504 additions and 3,236 deletions across 432 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- added a default retry for application job - [#3539](https://github.com/rubygems/rubygems.org/pull/3539).
- added a log tickets page to the admin dashboard - [#3586](https://github.com/rubygems/rubygems.org/pull/3586).
- fixed Fastly soft purging - [#3619](https://github.com/rubygems/rubygems.org/pull/3619).
- added a feature to allow an admin to reset the user API key from Admin Tools - [#3622](https://github.com/rubygems/rubygems.org/pull/3622).
- fixed a flaky test by making `Rubygem#protected_days` stop at zero - [#3655](https://github.com/rubygems/rubygems.org/pull/3655).
- disabled LaunchDarkly in local environments - [#3647](https://github.com/rubygems/rubygems.org/pull/3647).
- renamed `GemContentEntry` to `RubygemContents::Entry` - [#3669](https://github.com/rubygems/rubygems.org/pull/3669).
- removed delayed job `statsd` deployment since it's no longer in use - [#3642](https://github.com/rubygems/rubygems.org/pull/3642).
- stored and yanked gem contents in background jobs - [#3454](https://github.com/rubygems/rubygems.org/pull/3454).
- added a response to the CLI on webauthn verification - [#3535](https://github.com/rubygems/rubygems.org/pull/3535).

In March, RubyGems.org gained [190 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-03-01%7D...master@%7B2023-03-31%7D), contributed by 15 authors. There were 7,437 additions and 2,105 deletions across 337 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@TonyCTHsu](https://github.com/TonyCTHsu) TonyCTHsu
- [@orien](https://github.com/orien) Orien Madgwick
- [@simi](https://github.com/simi) Josef Šimánek
- [@johnnyshields](https://github.com/johnnyshields) Johnny Shields
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@Julzerator](https://github.com/Julzerator) Julie Haehn
- [@KJTsanaktsidis](https://github.com/KJTsanaktsidis) KJ Tsanaktsidis
- [@MSP-Greg](https://github.com/MSP-Greg) MSP-Greg
- [@voxik](https://github.com/voxik) Vít Ondruch
 
### Contributors to RubyGems.org:

- [@stirlhoss](https://github.com/stirlhoss) Stirling Hostetter
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@indirect](https://github.com/indirect) André Arko
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@y-yagi](https://github.com/y-yagi) y-yagi
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@cprodhomme](https://github.com/cprodhomme) Clément Prod'homme
- [@arunagw](https://github.com/arunagw) Arun Agrawal

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
