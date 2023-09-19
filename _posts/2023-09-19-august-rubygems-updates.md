---
title: August 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## RubyGems News

This month in RubyGems, we released [3.4.18](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3418--2023-08-02), [3.4.19](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3419--2023-08-17) and Bundler [2.4.18](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2418-august-2-2023), [2.4.19](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2419-august-17-2023).

In RubyGems, we improved the documentation performance by speeding up the build process when updating RubyGems - [#6864](https://github.com/rubygems/rubygems/pull/6864). We added a poller to fetch WebAuthn OTPs - [#6774](https://github.com/rubygems/rubygems/pull/6774), added a `file` option to the Ruby method in the Gemfile - [#6876](https://github.com/rubygems/rubygems/pull/6876) and removed some side effects when unmarshalling old `Gem::Specifications`- [#6825](https://github.com/rubygems/rubygems/pull/6825).

Some other improvements that landed into our repo this month but that are not included in the above releases are:

- optimized memory usage in `Bundler::Settings`, resulting in a faster boot time - [#6884](https://github.com/rubygems/rubygems/pull/6884).
- raised `Gem::Package::FormatError` when gem encounters corrupt EOF - [#6882](https://github.com/rubygems/rubygems/pull/6882).
- made an update to resolve Ruby version file relative to bundle root - [#6892](https://github.com/rubygems/rubygems/pull/6892).
- added support for ruby file `.tool-versions` in Gemfile - [#6898](https://github.com/rubygems/rubygems/pull/6898).
- fixed a regression that could cause some legacy Gemfiles with multiple sources to take much longer to resolve - [#6916](https://github.com/rubygems/rubygems/pull/6916).
- improved warning messages for bundled gems - [#6921](https://github.com/rubygems/rubygems/pull/6921).

In August, RubyGems gained [106 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-08-01%7D...master@%7B2023-08-31%7D) contributed by 17 authors. There were 1,006 additions and 268 deletions across 97 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- fixed the footer sponsor images being cut off at certain screen widths - [#3996](https://github.com/rubygems/rubygems.org/pull/3996).
- updated Japanese translations - [#3998](https://github.com/rubygems/rubygems.org/pull/3998).
- allowed searching for a user in `avo` api key role resource - [#4000](https://github.com/rubygems/rubygems.org/pull/4000).
- removed WebAuthn banner from homepage - [#4003](https://github.com/rubygems/rubygems.org/pull/4003).
- added `Avo` to sponsors page - [#3999](https://github.com/rubygems/rubygems.org/pull/3999).
- uploaded capybara test screenshots on failure - [#3990](https://github.com/rubygems/rubygems.org/pull/3990).
- fixed compact index files when gems are yanked - [#207be52ef6ce4fb9ee5eaed97c09f02277911da2](https://github.com/rubygems/rubygems.org/commit/207be52ef6ce4fb9ee5eaed97c09f02277911da2).
- enabled `OIDC` to fetch API tokens - [#3716](https://github.com/rubygems/rubygems.org/pull/3716).

In August, RubyGems gained [83 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-08-01%7D...master@%7B2023-08-31%7D) contributed by 15 authors. There were 6,625 additions and 1,967 deletions across 224 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@technicalpickles](https://github.com/technicalpickles) Josh Nichols
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@manuraj17](https://github.com/manuraj17) Manu
- [@ngan](https://github.com/ngan) Ngan Pham
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@jhong97](https://github.com/jhong97) John Hong
- [@amatsuda](https://github.com/amatsuda) Akira Matsuda
- [@indirect](https://github.com/indirect) André Arko
- [@gvkhna](https://github.com/gvkhna) Gaurav Khanna

### Contributors to RubyGems.org:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@indirect](https://github.com/indirect) André Arko
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@pboling](https://github.com/pboling)Peter Boling
- [@bettymakes](https://github.com/bettymakes) Betty Li
- [@george-ma](https://github.com/george-ma) George Ma
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@Daniel-N-Huss](https://github.com/Daniel-N-Huss) Daniel Huss
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@nagachika](https://github.com/nagachika) Nagachika
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@gemmaro](https://github.com/gemmaro) gemmaro
- [@tnir](https://github.com/tnir) Takuya N
- [@simi](https://github.com/simi) Josef Šimánek
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
