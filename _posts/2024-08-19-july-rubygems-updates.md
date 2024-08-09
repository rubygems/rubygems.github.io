---
title: July 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in July.

## RubyGems News

In July, we released RubyGems [3.5.15](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3515--2024-07-09), [3.5.16](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3516--2024-07-18) and Bundler [2.5.15](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2515-july-9-2024), [2.5.16](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2516-july-18-2024). These releases brings a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements included a performance enhancement by using [`caller_locations` instead of splitting `caller`](https://github.com/rubygems/rubygems/pull/7708), as collecting all call locations as strings and then extracting and splitting just one was inefficient. Additionally, we resolved issues with loading [nested `gemrc` configuration keys](https://github.com/rubygems/rubygems/pull/7851) when specified as symbols and implemented a file lock to [safeguard the creation of `binstubs`](https://github.com/rubygems/rubygems/pull/7806). 

Some other important accomplishments from the team this month include:

**Publishing a [basic conformance test for all gem servers](https://github.com/rubygems/gem_server_conformance)**

- This update allows any gem server to be easily tested for compliance with RubyGems standards, significantly impacting both users and developers.
- The conformance test can be accessed and utilized through our [GitHub repository](https://github.com/rubygems/gem_server_conformance).

[**Updating our OpenSearch cluster from 2.11 to 2.13**](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/release-notes.html)

- We recently updated our OpenSearch cluster from version 2.11 to 2.13 as part of our regular maintenance routine.
- This upgrade was efficiently executed with a one-click process in our AWS console. The update ensures that our systems continue to run smoothly and benefit from the latest features and improvements. For more details on the update and its benefits, refer to the [AWS OpenSearch release notes](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/release-notes.html).

**Confirmed protection against recent OpenSSH Bug**

- Early this month, [a vulnerability was discovered](https://cyberinsider.com/14-million-openssh-servers-potentially-vulnerable-to-regresshion-bug/) in certain versions of OpenSSH that could trigger remote code execution.
- The RubyGems security team promptly responded by implementing tests to ensure our software was not exposed to this threat, guaranteeing that our users and developers could continue their work without interruption.

In July, RubyGems gained [171 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-7-01%7D...master@%7B2024-7-31%7D) contributed by 12 authors. They were 2,827 additions and 1,769 deletions across 113 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to RubyGems.org reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for RubyGems.org in July was provided by AWS, Fastly, and DataDog. The following are highlights of what the team worked on this month:

**Discontinued Auto Sign-In** [**After Email Confirmation](https://github.com/rubygems/rubygems.org/pull/4810) [and Password Reset](https://github.com/rubygems/rubygems.org/pull/4811)**

- The primary goal for this change is to simplify login flows, reducing the likelihood of mistakes or bypasses.
- This change aligns with best practices recommended by [OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html#user-resets-password) and will enhance security and streamline the login process for both users and developers.

**Presented on [RubyGems.org](http://rubygems.org/) at RedDot Ruby Conference 2024**

- [@colby-swandale](https://github.com/colby-swandale) gave a presentation on ["Scaling RubyGems.org to 1 Trillion Downloads"](https://drive.google.com/file/d/1szfL-qNAa_isxsnPqR8d7rDmxwZD1MzJ/view).
- The talk was a deep dive into Ruby's package ecosystem, exploring how RubyGems.org is maintained and the ongoing efforts of the team ensuring [rubygems.org](http://rubygems.org/) remains a healthy and sustainable platform long into the future.
- Colby discussed the latest work and improvements made to the platform and outlined plans for future enhancements.

In July, [RubyGems.org](http://rubygems.org/) gained [134 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-7-01%7D...master@%7B2024-7-31%7D) contributed by 8 authors. There were 2,421 additions and 978 deletions across 167 files.


## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@ntkme](https://github.com/ntkme) Natsuki Times
- [@moofkit](https://github.com/moofkit) Dmitriy Ivliev
- [@leetking](https://github.com/leetking) Alpha 0x00
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@simi](https://github.com/simi) Josef Šimánek
- [@jasonkarns](https://github.com/jasonkarns) Jason Karns
- [@coryspitzer](https://github.com/CorySpitzer) Cory Spitzer
- [@martinemde](https://github.com/martinemde) Martin Emde

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@indirect](https://github.com/indirect) André Arko
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@earlopain](https://github.com/Earlopain) Earlopain
- [@robbyrussell](https://github.com/robbyrussell) Robby Russell
- [@jenshenny](https://github.com/jenshenny) Jenny Shen

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
