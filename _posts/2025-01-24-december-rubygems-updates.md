---
title: December 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in December. Although December was a slower month as the team enjoyed time off during the holiday season, but we’re happy to share the progress we made nonetheless. Read on for a report of the OSS work we did last month. 

## Monthly Update changes

We’ll be cutting our reporting on the monthly RubyGems and RubyGems.org GitHub repo summary, in favor of quarterly and annual reports published separately by Ruby Central. These reports will allow us to provide a more expansive view into the volume and impact of our security work for the Ruby community.

## RubyGems News

In December, we released RubyGems [3.6.0](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#360--2024-12-16), [3.6.1](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#361--2024-12-17), [3.6.2](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#362--2024-12-23) and Bundler [2.6.0](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#260-december-16-2024), [2.6.1](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#261-december-17-2024), [2.6.2](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#262-december-23-2024) by mid-December, addressing and resolving identified regressions, and coordinating with the Ruby core team to ensure the new versions were integrated with Ruby ahead of its December 25th release. Ultimately, we shipped RubyGems 3.6.2 and Bundler 2.6.2 alongside Ruby 3.4, resolving several regressions from the initial releases.

The release of [Bundler 2.6](https://bundler.io/blog/2024/12/19/bundler-v2-6.html) and [RubyGems 3.6](https://blog.rubygems.org/2024/12/16/3.6.0-released.html) ****is the culmination of previous years’ work, particularly in regard to the lockfile checksum’s feature that we decided to delay and not ship with Bundler 2.5. 

Other notable improvements include fixing an issue where [`gem info` tagged some non-default gems as default](https://github.com/rubygems/rubygems/pull/8321), adding [a `--attestation` option to `gem push`](https://github.com/rubygems/rubygems/pull/8239) for improved security, [introducing `bundle lock --add-checksums`](https://bundler.io/blog/2024/12/19/bundler-v2-6.html) to add checksums to existing lockfiles and [fixing JRuby warnings when using `bundler/setup` with Ruby's `-w` flag](https://github.com/rubygems/rubygems/pull/8205).

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in December was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [DataDog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

[**An update to RubyGems 3.6 and Bundler 2.6**](https://github.com/rubygems/rubygems.org/pull/5349)

- This update includes the release of RubyGems 3.6 and Bundler 2.6, delivering enhancements and fixes to improve the overall developer experience.
- Key changes address minor regressions and stability improvements introduced in previous versions.

[**Expanded availability of the admin user create button**](https://github.com/rubygems/rubygems.org/pull/5312)

- The admin user creation button is now displayed either in local environments or when user signups are disabled.
- This update ensures admins can easily create new users under these specific conditions, improving usability and access control management.

[**An update to`PasswordsControllerTest`** **to use modern Rails IntegrationTest**](https://github.com/rubygems/rubygems.org/pull/5291)

- During a review of a potential vulnerability report, which was deemed not an issue, test coverage for the `PasswordsController` was increased to ensure robustness.
- Additionally, the tests were migrated to use the modern Rails `IntegrationTest` framework, replacing the older controller tests. This update aligns with current Rails recommendations and improves test reliability and maintainability.

## **RubyGems Ecosystem News**

This is where we highlight other exciting updates made to Ruby infrastructure projects that support our RubyGems work.

**Ruby Toolbox**

**[Keeping the Ruby Toolbox Up to Date and Stable](https://github.com/rubytoolbox/rubytoolbox/pull/1524):** to ensure Ruby Toolbox remains modern and stable, we’ve upgraded the application to Rails 8 and Ruby 3.4.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@simi](https://github.com/simi) Josef Šimánek
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@soda92](https://github.com/soda92) Maple
- [@st0012](https://github.com/st0012) Stan Lo
- [@CamJN](https://github.com/CamJN) Camden Narzt
- [@addersuk](https://github.com/addersuk) Adam Leach
- [@djoooooe](https://github.com/djoooooe) Josef Haider
- [@bquorning](https://github.com/bquorning) Benjamin Quorning
- [@luizkowalski](https://github.com/luizkowalski) Luiz Eduardo Kowalski
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@kou](https://github.com/kou) Sutou Kouhei

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@indirect](https://github.com/indirect) André Arko
- [@Uaitt](https://github.com/Uaitt) Lorenzo Zabot
- [@ozovalihasan](https://github.com/ozovalihasan) Hasan Özovalı
- [@mehulkar](https://github.com/mehulkar) Mehul Kar
- [@Kuanchiliao1](https://github.com/Kuanchiliao1) Tony Liao
- [@yob](https://github.com/yob) James Healy
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.