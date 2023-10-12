---
title: September 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in September.

## RubyGems News
This month in RubyGems, we released RubyGems [3.4.20](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3420--2023-09-27) and Bundler [2.4.20](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2420-september-27-2023).

Building on the work of [@segiddins](https://github.com/segiddins) and [@mercedesb](https://github.com/mercedesb), we worked on adding support for `SHA256` checksum verification of Bundled gems during installation, as described in this [RFC](https://github.com/rubygems/rfcs/pull/50) and supported, reviewed, and contributed to improvements in Bundler’s performance and memory efficiency. We worked on allowing RubyGems to gracefully fall back to a user install if the default `gem home` isn't writable. This will resolve a request users of RubyGems have been wanting for 8 years - [#5327 ](https://github.com/rubygems/rubygems/pull/5327). Additionally, we updated the SPDX license list from 2023-04-28,  2023-06-18, to 2023-01-26, raised `Gem::Package::FormatError` when gem encounters corrupt EOF [#6882](https://github.com/rubygems/rubygems/pull/6882), and ensured that loading multiple gemspecs with legacy YAML class references does not warn [#6889](https://github.com/rubygems/rubygems/pull/6889)

Some other improvements that landed into our repo this month but that are not included in the above releases are:

- added `universal-java-19` to CI test setup Gemfile locks - [#6942](https://github.com/rubygems/rubygems/pull/6942).
- fixed false positive SymlinkError in symbolic link directory - [#6947](https://github.com/rubygems/rubygems/pull/6947).
- added support for the `ruby-3.2.2` format in the `ruby file:` Gemfile directive, and explicitly test the `3.2.2@gemset` format as rejected - [#6954](https://github.com/rubygems/rubygems/pull/6954).
- reduced allocations for stub specifications - [#6972](https://github.com/rubygems/rubygems/pull/6972).
- allowed standalone mode to work on a Windows edge case - [#6989](https://github.com/rubygems/rubygems/pull/6989).
- improved release scripts - [#6999](https://github.com/rubygems/rubygems/pull/6999).
- fixed safe marshal test on jruby - [#6984](https://github.com/rubygems/rubygems/pull/6984).

In September, RubyGems gained [114 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-09-01%7D...master@%7B2023-09-30%7D) contributed by 14 authors. There were 2,455 additions and 571 deletions across 105 files.

## RubyGems.org News

This month in RubyGems.org, we improved how [gravatar exposed user email](https://github.com/rubygems/rubygems.org/issues/3278) by ensuring they are not publicly exposed - [#3731](https://github.com/rubygems/rubygems.org/pull/3731), [#4104](https://github.com/rubygems/rubygems.org/pull/4104). We added this change to keep our users information private and well secured and also opened an [RFC](https://github.com/rubygems/rfcs/pull/51) to enhance user profile in general. Support for PostgreSQL 11 version will end next February, so we have created a plan, wrote reference scripts and started documenting the upgrade in the following RFCs to get feedback - [#52](https://github.com/rubygems/rfcs/pull/52 ), [#53](https://github.com/rubygems/rfcs/pull/53).

Some other improvements that landed into our repo this month but that are not included in the above releases are:

- added a log in Pusher when notify is called - [#4072](https://github.com/rubygems/rubygems.org/pull/4072).
- added versions index on `lower(gem_full_name)` - [#4095](https://github.com/rubygems/rubygems.org/pull/4095).
- added backfill for `spec_sha256` on versions - [#4083](https://github.com/rubygems/rubygems.org/pull/4083).
- handled nil `api_key` in dashboards controller -[#4081](https://github.com/rubygems/rubygems.org/pull/4081).
- precompile assets on CI before running tests - [#4059](https://github.com/rubygems/rubygems.org/pull/4059).
- made all texts in about page translatable. - [#4063](https://github.com/rubygems/rubygems.org/pull/4063).
- only validate version metadata on create/change - [#4100](https://github.com/rubygems/rubygems.org/pull/4100).
- updated RubyGems & Bundler - [#4103](https://github.com/rubygems/rubygems.org/pull/4103).

In September, RubyGems gained [64 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-09-01%7D...master@%7B2023-09-30%7D) contributed by 5 authors. There were 1,855 additions and 1,070 deletions across 90 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@negi0109](https://github.com/negi0109) negi
- [@pboling](https://github.com/pboling) Peter Boling
- [@indirect](https://github.com/indirect) André Arko
- [@ytkg](https://github.com/ytkg) YOSHIKI
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@krororo](https://github.com/krororo) kitazawa
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@yaauie](https://github.com/yaauie) Ry Biesemeyer
- [@simi](https://github.com/simi) Josef Šimánek
- [@byroot](https://github.com/byroot) Jean Boussier
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash

### Contributors to RubyGems.org:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@indirect](https://github.com/indirect) André Arko

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.