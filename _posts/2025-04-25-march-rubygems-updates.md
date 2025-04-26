---
title: March 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in March. 

## RubyGems News

In March, we released RubyGems [**3.6.6**](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#366--2025-03-13) and Bundler [**2.6.6**](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#266-march-13-2025). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include fixing an [`ENAMETOOLONG` error when creating the compact index cache](https://github.com/rubygems/rubygems/pull/5578), showing clearer errors when writing a [lockfile on a read-only filesystem](https://github.com/rubygems/rubygems/pull/5920), ****and updating [`bundle doctor` to not report issues about unwritable files](https://github.com/rubygems/rubygems/pull/8520).

Some other important accomplishments from the team this month include:

**Improving reproducible gem builds**

- The RubyGems team implemented changes to make gem builds more reproducible based on recommendations from [Giacomo Benedetti](https://github.com/giacomobenedetti) and [William Enck](https://github.com/enck).
- Their suggestions included [setting a default `SOURCE_DATE_EPOCH` value of `315619200`](https://github.com/rubygems/rubygems/pull/8568) and [sorting metadata values in gemspecs](https://github.com/rubygems/rubygems/pull/8569). These updates improve compatibility with tools like Debian’s *reprotest*, making it easier to verify that gem builds are consistent across environments.
- This work was inspired by the paper [*An Empirical Study on Reproducible Packaging in Open-Source Ecosystems*](https://www.cs.cmu.edu/~ckaestne/pdf/icse25_rb.pdf?utm_source=chatgpt.com), which will be presented at the [2025 International Conference on Software Engineering.](https://conf.researchr.org/home/icse-2025)

![*Building RubyGems itself is trivially reproducible now without needing to specify SOURCE_DATE_EPOCH*](https://res.cloudinary.com/lauragift/image/upload/w_600,h_300/v1745614708/image_fwcmz0.png)

*Building RubyGems itself is trivially reproducible now without needing to specify SOURCE_DATE_EPOCH*

**Resolver performance improvements** 

- We've made significant performance improvements to Bundler's dependency resolution, thanks to recent contributions from [Hartley McGuire](https://github.com/skipkayhil).
- Initial changes focused on [reducing object allocations in methods like `Gem::Version#<=>` and `Bundler::Candidate#<=>`](https://github.com/rubygems/rubygems/pull/8559). Further optimizations targeted the resolution algorithm itself, including improvements to the [**`pub_grub`** resolver](https://github.com/jhawthorn/pub_grub/pull/37).
- As a result, Hartley reported a 60% speedup in `bundle update` time in his app after applying all patches. Huge thanks to Hartley for his contributions, and to [John Hawthorn](https://github.com/jhawthorn) for maintaining `pub_grub` and helping refine its API to support these enhancements.

**Wheels for RubyGems**

- Progress continues on bringing a prototype for precompiled binary packages**,** or "wheels" to RubyGems. [Samuel Giddins](https://github.com/segiddins) has defined a naming scheme for package files and finalized the set of identifying tags needed to support this across the Ruby ecosystem.
- Next steps include advocating within the Ruby community to help shift perceptions around precompiled binaries, and helping Rubyists understand that precompiled packages are actually **more secure** (no code execution at install time) and **more ergonomic** for users (no build tools or compilation delays). An RFC is also forthcoming.

**Compact index cache now handles long path names**

- Bundler now better handles long path names in the ****compact index cache, addressing an issue that could raise [**“Filename too long”** errors](https://github.com/rubygems/rubygems/pull/5578)—especially when using private servers like *JFrog Artifactory*.
- The fix was long delayed due to persistent CI failures, which were eventually traced to a [**Ruby on Windows bug**](https://bugs.ruby-lang.org/issues/21177) that has since been resolved.
- As part of the debugging process, we also improved our test reliability by removing the use of `FileUtils.rm_rf` in Bundler specs, as it silently fails on cleanup errors and made diagnosing the issue harder. This change will help prevent similar issues in the future.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in February was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org) and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

**Ecosystem data for Clickgems**

- [Marty](https://github.com/mghaught) collaborated with the [**ClickHouse**](https://clickhouse.com/) team to finalize details for our partnership on *Clickgems*, the Ruby equivalent of the popular [ClickPy](https://clickpy.clickhouse.com/) site, [which officially launched last week!](https://clickhouse.com/blog/announcing-ruby-gem-analytics-powered-by-clickhouse)
- [Samuel Giddins](https://github.com/segiddins) led the effort to push RubyGems ecosystem data into ClickHouse, which now includes daily download totals and the latest public database dumps from RubyGems.org. Work is underway to roll out granular download data, made possible by retooling the [Kirby](https://github.com/rubytogether/kirby) log parser to stream data directly from the RubyGems.org CDN.
- This new level of insight will help the Ruby community better understand package usage trends and support maintainers in making more informed decisions, especially around platform support.

[**Database performance investigation after brief DoS**](https://github.com/rubygems/rubygems.org/pull/5595)

- A brief Denial of Service (DoS) incident targeting RubyGems.org prompted an investigation into web pages with heavy database queries.
- While no specific culprit was found, the incident served as a reminder of the need for strong visibility into database performance when operating a web system at scale.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@devsheva](https://github.com/devsheva) Mateo Sheshi
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@saraid](https://github.com/saraid) Michael Chui
- [@cllns](https://github.com/cllns) Sean Collins
- [@taralbass](https://github.com/taralbass) Tara Bass
- [@mbclu](https://github.com/mbclu) Mitch Clutter
- [@jacobat](https://github.com/jacobat) Jacob Atzen
- [@skipkayhil](https://github.com/skipkayhil) Hartley McGuire
- [@rwstauner](https://github.com/rwstauner) Randy Stauner
- [@ioquatix](https://github.com/ioquatix) Samuel Williams
- [@giacomobenedetti](https://github.com/giacomobenedetti) Giacomo Benedetti
- [@olleolleolle](https://github.com/olleolleolle) Olle Jonsson

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@wooly](https://github.com/wooly) Steve Bell
- [@mghaught](https://github.com/mghaught) Marty Haught
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
