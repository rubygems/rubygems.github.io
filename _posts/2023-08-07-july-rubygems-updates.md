---
title: July 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in July.

## RubyGems News

This month in RubyGems, we released [3.4.16](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3416--2023-07-10), [3.4.17](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3417--2023-07-14) and Bundler [2.4.16](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2416-july-10-2023), [2.4.17](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2417-july-14-2023). 

In RubyGems, we improved certain gem install invocations that had gotten slower since the dependencies API was phased out. In Bundler, the releases included several improvements such as fixes related to locked platforms, improvements to make sections related to git gems stable, and some other regression fixes.

Some other improvements that landed into our repo this month but that are not included in the above releases are:

- improved RubyGems `require` - [#6827](https://github.com/rubygems/rubygems/pull/6827).
- improvements related to the Security Devices support feature - [#6774](https://github.com/rubygems/rubygems/pull/6774).
- updated Magnus version in Rust extension gem template - [#6843](https://github.com/rubygems/rubygems/pull/6843).
- removed side effects when unmarshaling old `Gem::Specification` - [#6825](https://github.com/rubygems/rubygems/pull/6825).
- used `File::NULL `instead of hard coded null device names - [#6809](https://github.com/rubygems/rubygems/pull/6809).
- added Automatiek improvements - [#6788](https://github.com/rubygems/rubygems/pull/6788).
- fixed another incorrect removal of "Ruby" platform from lockfile when changing path sources - [#6784](https://github.com/rubygems/rubygems/pull/6784).
- fixed git source lockfile instability - [#6786](https://github.com/rubygems/rubygems/pull/6786).
- excluded Bundler from missing locked dependencies check - [#6792](https://github.com/rubygems/rubygems/pull/6792).

In July, RubyGems gained [96 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-07-01%7D...master@%7B2023-07-31%7D) contributed by 13 authors. There were 1,559 additions and 695 deletions across 86 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- reduced the size of the deployed docker image from >350MB to 277MB - [#3894](https://github.com/rubygems/rubygems.org/pull/3894).
- redirect MFA Required users to edit settings page - [#3902](https://github.com/rubygems/rubygems.org/pull/3902).
- extracted `GEM_NAME_RESERVED_LIST` into database and include in admin panel.- #[3897](https://github.com/rubygems/rubygems.org/pull/3897).
- added user validation on MFA Level - [#3905](https://github.com/rubygems/rubygems.org/pull/3905).
- added enabled/disabled badge for OTP & Webauthn - [#3936](https://github.com/rubygems/rubygems.org/pull/3936).
- fixed limiting allowed methods in nginx - [#3941](https://github.com/rubygems/rubygems.org/pull/3941).
- used `setup_webauthn_authentication` helper method in updating MFA level - [#3963](https://github.com/rubygems/rubygems.org/pull/3963).
- implemented Avo actions to enqueue compact index file upload jobs - [#3970](https://github.com/rubygems/rubygems.org/pull/3970).
- redirected user to signin after webauthn error has occurred - [#3962](https://github.com/rubygems/rubygems.org/pull/3962).
- added `maintenance_tasks` engine for running one-off tasks - [#3971](https://github.com/rubygems/rubygems.org/pull/3971).
- refactored the mailer content to specify the MFA implementation used (TOTP) - [#3903](https://github.com/rubygems/rubygems.org/pull/3903).

![Auth with Yubikey](https://res.cloudinary.com/lauragift/image/upload/w_650/v1691405747/251542232-7b70ce3f-c92e-41a2-a5a4-279d3ccbd062_ekruea.png)

In July, RubyGems gained [100 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-07-01%7D...master@%7B2023-07-31%7D) contributed by 18 authors. There were 2,496 additions and 1,602 deletions across 130 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@simi](https://github.com/simi) Josef Šimánek
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@ParadoxV5](https://github.com/ParadoxV5) Jimmy H
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@koic](https://github.com/koic) Koichi ITO
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@obregonia1](https://github.com/obregonia1) Kentaro Takeyama
- [@fxn](https://github.com/fxn) Xavier Noria
- [@ko1](https://github.com/ko1) Koichi Sasada
- [@matsadler](https://github.com/matsadler) Mat Sadler


### Contributors to RubyGems.org:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@bettymakes](https://github.com/bettymakes) Betty Li
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@george-ma](https://github.com/george-ma) George Ma
- [@Schwad](https://github.com/Schwad) Nick Schwaderer
- [@shouichi](https://github.com/shouichi) Shouichi Kamiya
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@scottzyang](https://github.com/scottzyang) Scott Yang
- [@a5-stable](https://github.com/a5-stable) a5
- [@etiennebarrie](https://github.com/etiennebarrie) Étienne Barrié
- [@ccmywish](https://github.com/ccmywish) ccmywish
- [@ParadoxV5](https://github.com/ParadoxV5) Jimmy H

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
