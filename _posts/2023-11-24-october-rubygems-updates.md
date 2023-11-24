---
title: October 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## RubyGems News
This month in RubyGems, we released RubyGems [3.4.21](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3421--2023-10-17) and Bundler [2.4.21](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2421-october-17-2023). 

A couple of noteworthy updates this month include the introduction of a feature to abort `setup.rb` for outdated Ruby versions - [#7011](https://github.com/rubygems/rubygems/pull/7011), and efficiency enhancements enabled by removing `Dir.chdir` from subprocess execution - [#6930](https://github.com/rubygems/rubygems/pull/6930). We also achieved a major configuration improvement by implementing a `pure-ruby` YAML parser -[#6615](https://github.com/rubygems/rubygems/pull/6615). The documentation also saw significant improvements, with updates to the `bindir` variable - [#7028](https://github.com/rubygems/rubygems/pull/7028) and fixes to invalid links - [#7008](https://github.com/rubygems/rubygems/pull/7008).


Some other improvements that landed into our repo this month that are NOT included in the above releases are:

- an enhanced continuous integration (CI) by incorporating the latest patch level releases of Ruby, ensuring more robust testing environments - [#7036](https://github.com/rubygems/rubygems/pull/7036).
- updates to the SPDX license list to reflect the latest standards as of October 5, 2023. This ensures compliance and accuracy in licensing - [#7040](https://github.com/rubygems/rubygems/pull/7040).
- improved formatting and presentation of global source information on the `bundle plugin` manual page, contributing to better usability and readability - [#7045](https://github.com/rubygems/rubygems/pull/7045).
- significant optimization by reusing the `Gem::RemoteFetcher` instance within Bundler  - [#7079](https://github.com/rubygems/rubygems/pull/7079).
- modified, more relaxed, pattern matching for Rake versions, allowing for greater flexibility and compatibility in different environments - [#7123](https://github.com/rubygems/rubygems/pull/7123).
- refinements to the recent fix related to `force_ruby_platform` - [#7115](https://github.com/rubygems/rubygems/pull/7115).
- a merged pull request to enable automatic switching to user-level gem installations when `GEM_HOME` is unset and the default gem home is not writable - [#5327](https://github.com/rubygems/rubygems/pull/5327).

In October, RubyGems gained [160 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-10-01%7D...master@%7B2023-10-31%7D) contributed by 22 authors. There were 3,940 additions and 1,149 deletions across 197 files.

## RubyGems.org News

The updates to RubyGems.org this month reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Here's a brief overview of the key improvements in the release:

- implementing a fix for the subscription links on the RubyGems dashboard - [#4111](https://github.com/rubygems/rubygems.org/pull/4111).
- creating a proof-of-concept (POC) for integrating Tailwind CSS, aiming to modernize and enhance the frontend design and responsiveness of RubyGems - [#4113](https://github.com/rubygems/rubygems.org/pull/4113).
- resolving ambiguity in ownership uniqueness errors, specifically addressing scenarios where a user is already invited or is an owner - [#4119](https://github.com/rubygems/rubygems.org/pull/4119).
- addressing a critical issue where users who had pushed gems with associated API keys faced difficulties with account deletion. This fix ensures smoother user account management and security - [#4130](https://github.com/rubygems/rubygems.org/pull/4130).
- fixing timestamp fields options feature, refining user interface elements and data accuracy - [#4132](https://github.com/rubygems/rubygems.org/pull/4132).


In October, RubyGems.org gained [60 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-10-01%7D...master@%7B2023-10-31%7D) contributed by 12 authors. There were 4,532 additions and 2,184 deletions across 181 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@mgmarlow](https://github.com/mgmarlow) Graham Marlow
- [@harshalbhakta](https://github.com/harshalbhakta) Harshal Bhakta
- [@composerinteralia](https://github.com/composerinteralia) Daniel Colson
- [@manuraj17](https://github.com/manuraj17) Manu
- [@intrip](https://github.com/intrip) Jacopo Beschi
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@ccutrer](https://github.com/ccutrer) Cody Cutrer 
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@kstevens715](https://github.com/kstevens715) Kyle Stevens
- [@mercedesb](https://github.com/mercedesb) Mercedes
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@dearblue](https://github.com/dearblue) dearblue
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@simi](https://github.com/simi) Josef Šimánek
- [@eregon](https://github.com/eregon) Benoit Daloze
- [@ekohl](https://github.com/ekohl) Ewoud Kohl van Wijngaarden
- [@rye-stripe](https://github.com/rye-stripe) Peteris Rudzusiks
- [@kenyon](https://github.com/kenyon) Kenyon Ralph
- [@jeremy](https://github.com/jeremy) Jeremy Daer


### Contributors to RubyGems.org:

- [@arunagw](https://github.com/arunagw) Arun Agrawal
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@javier-menendez](https://github.com/javier-menendez) Javier Menéndez Rizo
- [@jjb](https://github.com/jjb) John Bachir
- [@Uda-Titor](https://github.com/Uda-Titor) ryohei udagawa
- [@indirect](https://github.com/indirect) André Arko
- [@arletterocks](https://github.com/arletterocks) Arlette Thibodeau
- [@xuanxu](https://github.com/xuanxu) Juanjo Bazán
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
