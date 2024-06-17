---
title: May 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in May.

## RubyGems News

In May, we released RubyGems [3.5.10](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3510--2024-05-03) and [3.5.11](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3511--2024-05-28) , and Bundler [2.5.10](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2510-may-3-2024) and [2.5.11](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2511-may-28-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems, including: a security update to [limit the size of the metadata and checksums files](https://github.com/rubygems/rubygems/pull/7568) in a gem package, a fix for an issue when [plugin stubs would sometimes not be properly removed](https://github.com/rubygems/rubygems/pull/7631) by `gem uninstall`, the [deprecation of Bundler constants](https://github.com/rubygems/rubygems/pull/7653) and [the addition of`--glob` flag to `bundle add`](https://github.com/rubygems/rubygems/pull/7557). Finally, Ngan Pham, software engineer at Gusto, penned this [guest blog post](https://blog.rubygems.org/2024/05/30/bundler-auto-install-just-got-a-whole-lot-better.html) on an exciting improvement to `auto_install` [@technicalpickles](https://github.com/technicalpickles) implemented, that is also included in this Bundler release.

Some other important accomplishments from the team this month include:

[**Improve handling of applications with a local cache of gems**](https://github.com/rubygems/rubygems/pull/7680)

- Recently we had fixed some issues for gems with a local cache of gems. Unfortunately these fixes created both functionality and performance regressions with this mode of operation. We worked on fixing these issues while also improving Bundler’s internal code organization.
- We made handling the type of gems considered by bundler (locally installed, cached, or remote) more explicit and moved it out of `Bundler::Definition` which is a class with too many responsibilities. This allowed us to simplify the code and fix reported issues about functionality and performance, improving the RubyGems experience for both users and developers.

[**Making default gems behave like regular gems**](https://github.com/rubygems/rubygems/pull/7673)

- Handling default gems can be challenging even with minor Ruby updates. This can impact Bundler when switching Ruby versions, leading to missing gems.
- Default gems also require special internal handling. Ideally, we want to treat default gems like regular gems, allowing them to be cached and fully installed in Bundler's configured path. Although we attempted this change for Bundler 2.5, we reverted it just before release due to reports of issues.
- This time, we've tried to learn from past experiences and re-enable the feature, ensuring that default gems are considered a last resort if their regular copies cannot be found. This approach maintains backward compatibility.

[**Fixing a shallow clone bug in Bundler git sources**](https://github.com/rubygems/rubygems/pull/7649)

- Bundling a git source could fail if the git server does not support shallow cloning. This issue was a regression from previous versions of Bundler.
- [@llenk](https://github.com/llenk) joined us at RailsConf 2024’s Hack Day and helped work on a fix for this. We focused on a bug report about git sources breaking for some users. [@llenk](https://github.com/llenk) developed a solution that first attempts an efficient shallow clone and, if that fails, automatically retries with a full git clone.

[**Refactoring the Compact Index Client**](https://github.com/rubygems/rubygems/pull/7678)

- The `CompactIndexClient`, Bundler’s high efficiency gem resolution interface to [rubygems.org](http://rubygems.org) and other gem sources, has grown organically over time.
- Previously we had to refactor the updater to make it compatible with other gem sources and to clarify behavior. Increasing the readability of critical code paths makes it easier for new and experienced contributors alike to improve code, find bugs and increase performance.
- Inspired by memory improvements implemented during RailsConf 2024’s Hack Day, we have refactored the client, improved the cache interfaces and extracted a compact index parser.

[**Improving the memory footprint of `bundle update`**](https://github.com/rubygems/rubygems/pull/7637)

- When running `bundle update` and parsing the compact index versions file, an inefficiency caused nearly 70MB of unnecessary memory usage each time.
- This issue was discussed during at session at RailsConf 2024, which led [@jacklynhma](https://github.com/jacklynhma) to join us during the conference’s Hack Day and help tackle it. We quickly identified a change to reduce the memory footprint of parsing compact index versions: updating cache checksums. [@jacklynhma](https://github.com/jacklynhma) successfully implemented this improvement.

```bash
==> after <==
Total allocated: 689.06 MB (9638226 objects)
Total retained:  237.01 MB (2979180 objects)
==> before <==
Total allocated: 755.64 MB (10379242 objects)
Total retained:  236.94 MB (2977745 objects)
```

[**Fixing a Bundler Error Message Related Bug**](https://github.com/rubygems/rubygems/issues/7681#issuecomment-2125887269)

- A user reported that they received a confusing error message during a failed Bundle install of the Crono gem, leading them to open an issue. The error message incorrectly suggested a problem with Bundler, while the actual issue was operating system incompatibility.
- After collaborating with the user to define the problem, the error message was clarified to accurately reflect the operating system incompatibility issue. It now also provides clear guidance on gem naming to help users resolve the problem.

In May, RubyGems gained [131 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-5-01%7D...master@%7B2024-5-31%7D) contributed by 18 authors. They were 1,961 additions and 864 deletions across 142 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/?ref=rubycentral.org) in May was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [DataDog](https://www.datadoghq.com/?ref=rubycentral.org). The following are highlights of what the team worked on this month:

[**Set up Users for Trusted Publishing at RailsConf 2024**](https://github.com/rubygems/rubygems.org/pull/4676)

- At the end of last year we announced the release of [Trusted Publishing](https://blog.rubygems.org/2023/12/14/trusted-publishing.html?ref=rubycentral.org), a new feature that will help make [RubyGems.org](http://rubygems.org/) more secure, and make it easier to automate gem publishing.
- RailsConf 2024’s Hack Day provided contributors with an opportunity to get involved in RubyGems projects and learn how to set up Trusted Publishing. During the event, [@segiddins](https://github.com/segiddins) successfully set up a Trusted Publishing API for users, making the process even more accessible.

[**Added a timescaledb to RubyGems.org infrastructure**](https://github.com/rubygems/rubygems.org/pull/4716)

- Earlier this year we began work on the [metrics project](https://github.com/rubygems/rubygems.org/issues/4642), which seeks to introduce granular tracking and insights of gem downloads for users. To continue momentum on this, we have started the process of adding Timescale DB to [RubyGems.org](http://rubygems.org/) stack. We plan to use a separate Timescale instance to hold analytics information, like downloads over time.

In May, [RubyGems.org](http://rubygems.org/) gained [83 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-5-01%7D...master@%7B2024-5-31%7D) contributed by 11 authors. There were 1,429 additions and 662 deletions across 135 files.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@kateinoigakukun](https://github.com/kateinoigakukun) Yuta Saito
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@llenk](https://github.com/llenk) Ellen Keal
- [@x-yuri](https://github.com/x-yuri) X Yuri
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@jacklynhma](https://github.com/jacklynhma) Jacklyn Ma
- [@stomar](https://github.com/stomar) Marcus Stollsteimer
- [@dkav](https://github.com/dkav) Darren Kavanagh
- [@MSP-Greg](https://github.com/MSP-Greg) MSP Greg
- [@pascalbetz](https://github.com/pascalbetz) Pascal Betz
- [@indirect](https://github.com/indirect) André Arko
- [@k0kubun](https://github.com/k0kubun) Takashi Kokubun
- [@sachin-sandhu](https://github.com/sachin-sandhu) S.Sandhu
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@honeyankit](https://github.com/honeyankit) Ankit Honey
- [@JRice](https://github.com/JRice) Jeremy Rice

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@jacklynhma](https://github.com/jacklynhma) Jacklyn Ma
- [@nateberkopec](https://github.com/nateberkopec) Nate Berkopec
- [@javier-menendez](https://github.com/javier-menendez) Javier Menéndez Rizo
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@indirect](https://github.com/indirect) André Arko

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
