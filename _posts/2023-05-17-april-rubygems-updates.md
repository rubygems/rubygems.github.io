---
title: April 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in April.

## RubyGems News

This month in RubyGems, we released RubyGems [3.4.11](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3411--2023-04-10), [3.4.12](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3412--2023-04-11) and Bundler [2.4.11](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2411-april-10-2023), [2.4.12](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2412-april-11-2023).

The following improvements and fixes are included in these releases (see the changelog for more information):

- reduced chances of Bundler reverting to old APIs by removing a fallback to full indexes on big gemfiles in RubyGems - [#6578](https://github.com/rubygems/rubygems/pull/6578).
- made RubyGems less dependent on default gems by using a vendored `pure-ruby` YAML parser to load its own configuration - [#6615](https://github.com/rubygems/rubygems/pull/6615).
- added some development improvements like RuboCop enhancements - [#6599](https://github.com/rubygems/rubygems/pull/6599), [#6608](https://github.com/rubygems/rubygems/pull/6608), [#6586](https://github.com/rubygems/rubygems/pull/6586), [#6590](https://github.com/rubygems/rubygems/pull/6590), [#6582](https://github.com/rubygems/rubygems/pull/6582), and unified our tasks to vendor gems - [#6628](https://github.com/rubygems/rubygems/pull/6628).

In April, RubyGems gained [128 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-04-01%7D...master@%7B2023-04-30%7D) contributed by 12 authors. There were 2,125 additions and 1,244 deletions across 175 files.

## RubyGems.org News

### Dependency API Updates:

Based on additional feedback from community members, we have pushed back the removal by two weeks and added an exception until August 8 for Java users. New brownout dates are May 12, 15, 17, 19, 22, and the removal date is moved from May 10 to May 24.

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- refactored WebAuthn Verification logic - [#3720](https://github.com/rubygems/rubygems.org/pull/3720).
- added logging around pushing gems - [#3745](https://github.com/rubygems/rubygems.org/pull/3745). 
- added an admin Tool: Yank user - [#3684](https://github.com/rubygems/rubygems.org/pull/3684).
- fixed password hint text - [#3730](https://github.com/rubygems/rubygems.org/pull/3730).
- added a mailer for WebAuthn credential updates - [#3695](https://github.com/rubygems/rubygems.org/pull/3695).
- added a pop-up when a WebAuthn credential is deleted -[#3708](https://github.com/rubygems/rubygems.org/pull/3708).
- added an admin Tool: Change User Email - [#3709](https://github.com/rubygems/rubygems.org/pull/3709).
- allowed `avo` to search when index is allowed - [#3725](https://github.com/rubygems/rubygems.org/pull/3725).
- enabled Datadog HTTP request queuing - [#3754](https://github.com/rubygems/rubygems.org/pull/3754). 
- removed outdated `bin/update_vendor_cache` - [#3752](https://github.com/rubygems/rubygems.org/pull/3752).
- fixed lifecycle location in k8s yaml config - [#3747](https://github.com/rubygems/rubygems.org/pull/3747).
- added the `preStop` lifecycle hook to Nginx - [#3746](https://github.com/rubygems/rubygems.org/pull/3746).
- removed nginx version caching - [#3714](https://github.com/rubygems/rubygems.org/pull/3714).
- advertised that compact index actions accept range requests - [#3713](https://github.com/rubygems/rubygems.org/pull/3713).
- updated the default response to render plain text in `WebauthnVerification#authenticate` - [#3712](https://github.com/rubygems/rubygems.org/pull/3712).
- added caching to dependency API - [#3703](https://github.com/rubygems/rubygems.org/pull/3703).
- updated Ingress apiVersion to `networking.k8s.io/v1` - [#3687](https://github.com/rubygems/rubygems.org/pull/3687).
- replaced the dependency API route with search in encoding test - [#3682](https://github.com/rubygems/rubygems.org/pull/3682).
- added  a displayed message to user when safari is detected - [#3674](https://github.com/rubygems/rubygems.org/pull/3674).

![safari message](https://res.cloudinary.com/lauragift/image/upload/w_800,h_400/v1684313721/229232078-ec42d109-2d9f-4dce-9cee-fe1124db6da4_ibdvg3.png)

In April, RubyGems.org gained [162 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-04-01%7D...master@%7B2023-04-31%7D), contributed by 15 authors. There were 4,754 additions and 1,317 deletions across 164 files.


## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@luke-gru](https://github.com/luke-gru) Luke Gruber
- [@aellispierce](https://github.com/aellispierce) Ashley Ellis Pierce
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester 
- [@bettymakes](https://github.com/bettymakes) Betty Li
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@simi](https://github.com/simi) Josef Šimánek
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@MRozmus](https://github.com/MRozmus) Marcin Rozmus

### Contributors to RubyGems.org:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@simi](https://github.com/simi) Josef Šimánek
- [@jchestershopify](https://github.com/jchestershopify) Jacques Chester
- [@aellispierce](https://github.com/aellispierce) Ashley Ellis Pierce 
- [@bettymakes](https://github.com/bettymakes) Betty Li
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@indirect](https://github.com/indirect) André Arko
- [@adrianthedev](https://github.com/adrianthedev) Adrian Marin
- [@arunagw](https://github.com/arunagw) Arun Agrawal
- [@javier-menendez](https://github.com/javier-menendez) Javier Menéndez Rizo

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.