---
title: May 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in May.

## RubyGems News

This month in RubyGems, we released RubyGems [3.4.13](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3413--2023-05-09) and Bundler [2.4.13](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2413-may-9-2023).

In addition to the improvements listed in the above changelogs, other changes that landed in our repo during May were:

- ongoing unification of RubyGems and Bundler codebases - [#6691](https://github.com/rubygems/rubygems/pull/6691), [#6716](https://github.com/rubygems/rubygems/pull/6716).
- fixed API key loading if RubyGems host is set to development - [#6683](https://github.com/rubygems/rubygems/pull/6683).
- show an error when trying to update bundler in frozen mode - [#6684](https://github.com/rubygems/rubygems/pull/6684).
- made frozen setting take precedence over deployment setting - [#6685](https://github.com/rubygems/rubygems/pull/6685).
- fixed deployment vs path precedence - [#6703](https://github.com/rubygems/rubygems/pull/6703).

In May, RubyGems gained [91 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-05-01%7D...master@%7B2023-05-31%7D) contributed by 9 authors. There were 674 additions and 1,001 deletions across 103 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include:

- improved styling on the reverse dependencies page - [#3760](https://github.com/rubygems/rubygems.org/pull/3760).
- increased the number of puma threads from 1 to 5 -[#3773](https://github.com/rubygems/rubygems.org/pull/3773).
- set up `kubeconform` to lint rendered k8s yaml - [#3774](https://github.com/rubygems/rubygems.org/pull/3774).
- added job to upload pre-rendered versions files to S3 -[#3775](https://github.com/rubygems/rubygems.org/pull/3775).
- added mail notification when MFA is enabled - [#3779](https://github.com/rubygems/rubygems.org/pull/3779).
- ensured `x-amz-meta-Surrogate-Control` is set for `/versions` from S3 - [#3787](https://github.com/rubygems/rubygems.org/pull/3787).
- added development environment a default mailer port configuration - [#3792](https://github.com/rubygems/rubygems.org/pull/3792).
- renamed user OTP methods to reference OTP instead of MFA - [#3807](https://github.com/rubygems/rubygems.org/pull/3807).
- referenced `UserWebauthnMethods` in `UserMultifactorMethods` - [#3808](https://github.com/rubygems/rubygems.org/pull/3808)

In May, RubyGems.org gained [108 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-05-01%7D...master@%7B2023-05-31%7D), contributed by 12 authors. There were 1,851 additions and 1,541 deletions across 126 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:
- [@hsbt](https://github.com/hsbt) Hiroshi SHIBATA
- [@indirect](https://github.com/indirect) André Arko
- [@simi](https://github.com/simi) Josef Šimánek
- [@aeroastro](https://github.com/aeroastro) Takumasa Ochi
- [@kou](https://github.com/Kou) Sutou Kouhei
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich

### Contributors to RubyGems.org:
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@javier-menendez](https://github.com/javier-menendez) Javier Menéndez Rizo
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@indirect](https://github.com/indirect) André Arko
- [@garyhtou](https://github.com/garyhtou) Gary Tou
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@ericherscovich](https://github.com/ericherscovich) Eric Herscovich

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.****