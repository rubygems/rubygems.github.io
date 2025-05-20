---
title: April 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in April. 

## RubyGems News

In April, we released RubyGems [**3.6.7**](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#367--2025-04-03), [**3.6.8**](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#368--2025-04-13) and Bundler [**2.6.7**](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#267-april-3-2025), [**2.6.8**](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#268-april-13-2025). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems.

Notable improvements include [defaulting to a `SOURCE_DATE_EPOCH` of `315619200`](https://github.com/rubygems/rubygems/pull/8568) to simplify reproducible builds, [sorting gemspec metadata fields](https://github.com/rubygems/rubygems/pull/8569) to support consistent build outputs, [fixing a crash when the compact index API only listed versions](https://github.com/rubygems/rubygems/pull/8594), and [speeding up `Gem::Version#<=>` comparisons by 20–50%](https://github.com/rubygems/rubygems/pull/8565) when version lengths differ.

Some other important accomplishments from the team this month include:

**Progress on gems with precompiled binaries**

- Following community interest and questions about the initial **“wheels” proposal**, We opened a [GitHub discussion](https://github.com/rubygems/rubygems/discussions/8645) to gather feedback and facilitate conversation. We also invited input from members of the **OpenSSF Securing Software Repositories Working Group** to help align Ruby’s approach with best practices from other language ecosystems.
- We are now focused on collecting ****this feedback into a concrete list of features that will make it easier to use and develop gems with precompiled binaries, guiding the future of RubyGems in this space.

**Development of a Bundler 4 roadmap**

- [The Bundler 4 roadmap has been drafted](https://github.com/rubygems/rubygems/issues/8650), aiming to consolidate over a decade of unreleased improvements and breaking changes into a major release.
- The plan is to review and discuss all pending changes, allow users to opt-in and provide feedback, and prepare for a big release in December. This marks an important step toward modernizing Bundler while giving the community a clear path forward.

**`bundle doctor` now troubleshoots SSL issues**

- The `bundle doctor` command [now includes a new `--ssl` flag](https://github.com/rubygems/rubygems/pull/8624) to help users diagnose SSL-related issues. This improvement brings the functionality of the previously separate [ruby-ssl-check script](https://github.com/rubygems/ruby-ssl-check) directly into Bundler, making it easier to maintain and more accessible to users.
- Thanks to [@Edouard-chin](https://github.com/Edouard-chin) for contributing this enhancement by porting the script and integrating it into `bundle doctor`.

![bundle doctor SSL diagnosis output (successful!)](https://res.cloudinary.com/lauragift/image/upload/v1747763260/unnamed_kp477m.png)

## RubyGems.org News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for RubyGems.org in April was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org) and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

**April 2025 RubyGems stats** 

In April 2025, RubyGems.org recorded over **4.15 billion total gem downloads**, a **51% increase** from 2.74 billion in April 2024. This marks the first time in history that monthly gem downloads surpassed the **4 billion mark**, highlighting the continued momentum and growing impact of the Ruby ecosystem. Thanks to all of our partners and sponsors helping this to happen!

Looking at Bundler gem downloads trends, usage data shows a clear shift towards modern Ruby versions:

- **Ruby 3.4**, released in December 2024, already accounts for **13.1%** of Bundler downloads.
- **Ruby 3.3** rose from **10.4% to 27.9%**, making it the most widely used version.
- **Ruby 3.2** declined from **28.1% to 21.8%**, while **Ruby 3.1,** which reached EOL in March 2025, fell from **24.8% to 14.1%**.
- **Ruby 2.7**, EOL since March 2023, dropped from **20.4% to 16.1%**.
- Older versions (2.6 and below) continued their gradual decline.

These trends reflect a strong migration toward actively maintained, supported Ruby versions. Analytics were powered by ****[Clickhouse](https://clickhouse.com/).

The following are highlights of what the team worked on this month:

**Progress update on organizations**

- Work has resumed on the long-anticipated **Organizations feature** in RubyGems.org, led by [Colby Swandale](https://github.com/colby-swandale). After identifying the remaining functionality a few months ago, we’ve now secured budget to complete the work.
- The feature is currently being demoed to a small group of beta testers, with plans to open it to the broader community in the future. We’re looking forward to gathering feedback once Organizations becomes publicly available.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@Edouard-chin](https://github.com/Edouard-chin) Edouard Chin
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@jeremyevans](https://github.com/jeremyevans) Jeremy Evans
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@mperham](https://github.com/mperham) Mike Perham
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@thatrobotdev](https://github.com/thatrobotdev) James Kerrane
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@skipkayhil](https://github.com/skipkayhil) Hartley McGuire

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@gingerwizard](https://github.com/gingerwizard) Dale McDiarmid
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@indirect](https://github.com/indirect) André Arko
- [@marcoroth](https://github.com/marcoroth) Marco Roth
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
