---
title: December 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in December.

## RubyGems News

This month in RubyGems, we released final versions of RubyGems [3.4.0](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#340--2022-12-24) and [3.4.1](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#341--2022-12-24) and Bundler [2.4.0](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#240-december-24-2022) and [2.4.1](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#241-december-24-2022) featuring:

- a new "call to update" mechanism for RubyGems cleaning - [#5922](https://github.com/rubygems/rubygems/pull/5922).
- an enhanced Bundler resolver based on PubGrub - [#6146](https://github.com/rubygems/rubygems/pull/6146).
- generating of gems with rust extensions via bundle gem - [#6149](https://github.com/rubygems/rubygems/pull/6149).
- lighter Bundler git sources using shallow clones under the hood - [#6241](https://github.com/rubygems/rubygems/pull/6241).

In addition to that, we made the following improvements and fixes(see the changelog for more information):

- added support for `--pre` flag in `bundle update` and `bundle lock`  - [#5258](https://github.com/rubygems/rubygems/pull/5258).
- fixed `bundle outdated` with both `--groups` and `--parseable` flags - [#6148](https://github.com/rubygems/rubygems/pull/6148).
- fixed crash due to `BundlerVersionFinder` not being defined - [#6152](https://github.com/rubygems/rubygems/pull/6152).
- created a fallback to selecting installable candidates if possible when materializing specs - [#6225](https://github.com/rubygems/rubygems/pull/6225).
- updated generated CI scripts to be able to compile Rust extensions - [#6168](https://github.com/rubygems/rubygems/pull/6168).
- added a spec to make sure global gemspecs can't confuse Bundler - [#6086](https://github.com/rubygems/rubygems/pull/6086).

We also dropped support for old Rubies (2.3, 2.4, and 2.5) and finally removed the `auto-sudo` feature in Bundler 2.4, [a longstanding request of our users](https://blog.rubygems.org/2022/10/18/septemeber-rubygems-updates.html/#rubygems-news) because of being considered harmful.


In December, RubyGems gained [242 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-12-01%7D...master@%7B2022-12-31%7D), contributed by 20 authors. There were 77,119 additions and 3,466 deletions across 2,051 files.

## RubyGems.org News

In December, RubyGems.org saw several bug fixes and updates, some of which include the following:

- fixed mocha deprecation warnings in tests - [#3295](https://github.com/rubygems/rubygems.org/pull/3295).
- as part of ongoing work involved in creating WebAuthn CLI, we setup a verification page - [#3310](https://github.com/rubygems/rubygems.org/pull/3310), added a Webauthn verification authenticate endpoint [#3305](https://github.com/rubygems/rubygems.org/pull/3305), and set the Webauthn authentication challenge on the prompt page - [#3324](https://github.com/rubygems/rubygems.org/pull/3324).
- fixed dependency links pointing to their dependents - [#3312](https://github.com/rubygems/rubygems.org/pull/3312).
- created an ES index in `search_test` before relying on it - [#3303](https://github.com/rubygems/rubygems.org/pull/3303).
- updated the docs and scripts for contributing and setup - [#3300](https://github.com/rubygems/rubygems.org/pull/3300).
- migrated from Elasticsearch to the `opensearch-ruby` gem - [#3036](https://github.com/rubygems/rubygems.org/pull/3036).


This month, RubyGems.org gained [59 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-12-01%7D...master@%7B2022-12-31%7D), contributed by 12 authors. There were 2,133 additions and 632 deletions across 77 files.

As always, we continue to fix bugs, review and merge PRs and reply to support tickets.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@peterzhu2118](https://github.com/peterzhu2118) Peter Zhu
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@ianks](https://github.com/ianks) Ian Ker-Seymer
- [@simi](https://github.com/simi) Josef Šimánek
- [@eregon](https://github.com/eregon) Benoit Daloze
- [@zarqman](https://github.com/zarqman) Zarqman
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@alyssais](https://github.com/alyssais) Alyssa Ross
- [@eloyesp](https://github.com/eloyesp) Eloy Espinaco
- [@siegfault](https://github.com/siegfault) Michael Siegfried
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@joshuaswett](https://github.com/joshuaswett) Joshua Swett
- [@markburns](https://github.com/markburns) Mark Burns
- [@mensfeld](https://github.com/mensfeld) Maciej Mensfeld
- [@gustavothecoder](https://github.com/gustavothecoder) Gustavo Ribeiro

### Contributors to RubyGems.org:
- [@sonalkr132](https://github.com/sonalkr132) Aditya Prakash
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@kevinlinxc](https://github.com/kevinlinxc) Kevin Lin
- [@mensfeld](https://github.com/mensfeld) Maciej Mensfeld
- [@simi](https://github.com/simi) Josef Šimánek
- [@aellispierce](https://github.com/aellispierce) Ashley Ellis Pierce
- [@dorianmariefr](https://github.com/dorianmariefr) Dorian Marié
- [@bettymakes](https://github.com/bettymakes) Betty
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@martinemde](https://github.com/martinemde) Martin Emde

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
