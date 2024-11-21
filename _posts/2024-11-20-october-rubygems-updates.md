---
title: October 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## RubyGems News

In October, we released RubyGems [3.5.21](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3521--2024-10-03) and [3.5.22](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3522--2024-10-16) along with Bundler [2.5.21](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2521-october-3-2024) and [2.5.22](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2522-october-16-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include [updates to the vendored `uri` and `net-http` libraries](https://github.com/rubygems/rubygems/pull/8112), fixes to prevent `gem pristine etc` from [resetting twice](https://github.com/rubygems/rubygems/pull/8117) and the removal of code that [degraded the accuracy of `suggest_gems_from_name`](https://github.com/rubygems/rubygems/pull/8083).

Some other important accomplishments from the team this month include:

[**Improved Support for Shared GEM_HOMEs**](https://github.com/rubygems/rubygems/pull/8104)

- Sharing `GEM_HOME` across environments, though common, often leads to complex errors tied to native library incompatibilities. These issues are challenging to diagnose and frequently reported by users. Our goal with this update was to reduce these reports, enhance user experience, and free maintainers to focus on other priorities.
- Initially, we aimed to detect and clarify these errors, but their varied nature made precise messaging difficult. Further analysis showed that RubyGems and Bundler already handle such cases by ignoring improperly built extension gems, except when conflicts involved default gems. Recognizing this, we implemented a straightforward bug fix to resolve these edge cases.

[**Enhanced Bundler Integration with RubyGems, Resolving `bundle exec` Edge Case**](https://github.com/rubygems/rubygems/pull/8165)

- A reported issue involved `bundler` failing to run (with a final "r"), prompting a suggested fix. However, the affected code resided within Bundler's monkeypatches applied during `bundle/setup` to RubyGems, which has long been a suboptimal approach. This presented an opportunity to improve Bundler's integration with RubyGems, offering potential long-term maintenance benefits.
- We resolved the issue by eliminating these monkeypatches entirely. This was achieved by correcting Bundler's usage of the RubyGems API for setting gem specifications `Gem::Specification.all=`, which had previously overlooked default gems (including Bundler itself). Once corrected, the other monkeypatches were rendered unnecessary.
- Beyond fixing this edge case, our goal is to gradually integrate Bundler with RubyGems using proper APIs, reducing technical debt and potentially paving the way for a unified library in the future.

[**Improved Webauthn CLI Experience**](https://github.com/rubygems/rubygems/pull/8174)

- Recent webauthn support for the CLI encountered issues when `gem push` or other commands required two authenticated requests, such as when an API key had invalid scopes or when signing in before using the gem CLI. This required obtaining or fixing the API key before completing the intended operation.
- The issue arose from reusing the same OTP obtained through webauthn for both requests, which is not permitted. The solution was to perform two separate webauthn requests to generate distinct OTP codes.

In October, RubyGems gained [166 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-10-01%7D...master@%7B2024-10-31%7D) contributed by 15 authors. There were 1,302 additions and 14,205 deletions across 529 files.

## RubyGems.org News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in October was provided by [AWS](https://aws.amazon.com/), [Fastly](https://www.fastly.com/), and [DataDog](https://www.datadoghq.com/).

The following are highlights of what the team worked on this month:

[**Released Maintainer Role Feature**](https://blog.rubygems.org/2024/11/07/maintainer-role.html)

- Until now, every gem owner on [Rubygems.org](http://rubygems.org/) had the same permissions, regardless of their role or trust level within their organization. This highlighted a significant weakness: users with lower levels of trust could potentially cause considerable harm to widely used gems.
- To address this, we’ve introduced a new role field for gem ownerships. This enhancement allows gem owners to assign and configure roles for their gems, better reflecting real-world organizational structures and reducing potential security risks.

[**Converted RubyGems.org to Use Propshaft**](https://github.com/rubygems/rubygems.org/pull/5085)

- With Rails 8 adopting Propshaft as the default, we aimed to make the switch. After transitioning to importmaps earlier this year, we were largely ready to move from Sprockets. However, our first attempt led to styles not loading on staging, prompting us to delay.
- While working on a new design, we realized our site’s caching behavior could be longer than expected, and Propshaft might work fine. After thorough staging checks and timing refresh intervals, we deployed to production. Unfortunately, things broke longer than on staging. New assets triggered 404 errors, causing some initial panic before resolving on their own.
- **Lesson learned**: A smoother deploy would have involved loading new assets alongside old ones to allow for gradual cache warming. We underestimated the impact and duration of the disruption—apologies for the temporary issues. All is working fine now!

[**Added bcrypt Password Validation**](https://github.com/rubygems/rubygems.org/pull/5160)

- This update introduces bcrypt password validation to enhance security for password handling on [RubyGems.org](http://rubygems.org/). It uses byte-size validation to prevent passwords longer than 72 bytes, as bcrypt silently truncates passwords exceeding this length.

In October, [RubyGems.org](http://rubygems.org/) gained [106 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-10-01%7D...master@%7B2024-10-31%7D) contributed by 9 authors. There were 5,008 additions and 2,076 deletions across 288 files.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@jbampton](https://github.com/jbampton) John Bampton
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@simi](https://github.com/simi) Josef Šimánek
- [@tompng](https://github.com/tompng) Tomoya Ishida
- [@leoarnold](https://github.com/leoarnold) Leo Arnold
- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@sue445](https://github.com/sue445) Go Sueyoshi
- [@karreiro](https://github.com/karreiro) Guilherme Carreiro

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@manuelmeurer](https://github.com/manuelmeurer) Manuel Meurer
- [@kuanchiliao1](https://github.com/Kuanchiliao1) Tony Liao
- [@indirect](https://github.com/indirect) André Arko

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.