---
title: June 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in June.

## RubyGems News

This month in RubyGems, we released RubyGems [3.4.14](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3414--2023-06-12), [3.4.15](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3415--2023-06-29), and Bundler [2.4.14](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2414-june-12-2023), [2.4.15](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2415-june-29-2023).

The following improvements and fixes are included in these releases (see the changelog for more information):

- resolved a problem where using git sources could make the order of lockfiles unstable - [#6786](https://github.com/rubygems/rubygems/pull/6786).
- updated the command to test local gem command changes - [#6761](https://github.com/rubygems/rubygems/pull/6761).
- enabled `Performance/FlatMap` cop - [#6745](https://github.com/rubygems/rubygems/pull/6745).
- improved the edge case error message - [#6733](https://github.com/rubygems/rubygems/pull/6733).
- stopped publishing the Gemfile in the default gem template - [#6723](https://github.com/rubygems/rubygems/pull/6723).
- added a fix to avoid infinite loops when hitting resolution bugs - [#6722](https://github.com/rubygems/rubygems/pull/6722).
- stopped failures from occurring when the build directory name contains `+` symbol - [#6750](https://github.com/rubygems/rubygems/pull/6750).


In June, RubyGems gained [109 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-06-01%7D...master@%7B2023-06-30%7D) contributed by 10 authors. There were 978 additions and 624 deletions across 110 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- updated `toxiproxy` - [#3884](https://github.com/rubygems/rubygems.org/pull/3884).
- updated `kubeconform` used on CI - [#3886](https://github.com/rubygems/rubygems.org/pull/3886).
- switched `webauthn_credentials.any?` and `.present?` to be webauthn_enabled? - [#3867](https://github.com/rubygems/rubygems.org/pull/3867).
- added recovery code support for webauthn - [#3859](https://github.com/rubygems/rubygems.org/pull/3859).
- made `create_between` consistent for versions with same`created_at` timeframe - [#3887](https://github.com/rubygems/rubygems.org/pull/3887).
- added an admin action to reserve a gem namespace - [#3875](https://github.com/rubygems/rubygems.org/pull/3875).

![admin dashboard](https://res.cloudinary.com/lauragift/image/upload/w_650,h_500/v1689579722/248446070-a0eeaafa-1d52-4825-b73c-ccfa7a77228d_xqcueg.png)


In June, RubyGems gained [113 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-06-01%7D...master@%7B2023-06-30%7D) contributed by 11 authors. There were 2,262 additions and 463 deletions across 76 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@davetron5000](https://github.com/davetron5000) David Copeland
- [@gareth](https://github.com/gareth) Gareth Adams
- [@ioquatix](https://github.com/ioquatix) Samuel Williams
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@andrykonchin](https://github.com/andrykonchin) Andrii Konchyn
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@simi](https://github.com/simi) Josef Šimánek
- [@george-ma](https://github.com/george-ma) George Ma
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash

### Contributors to RubyGems.org:

- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@simi](https://github.com/simi) Josef Šimánek
- [@juankuquintana](https://github.com/juankuquintana) Juan Ku Quintana
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@bettymakes](https://github.com/bettymakes) Betty Li
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@indirect](https://github.com/indirect) André Arko
- [@bradly](https://github.com/bradly) Bradly Feeley

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
