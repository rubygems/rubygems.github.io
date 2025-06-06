---
title: May 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in May. 

## RubyGems News

In May, we released RubyGems [3.6.9](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#369--2025-05-13) and Bundler [2.6.9](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#269-may-13-2025). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems.

Notable improvements include [fixing the `doctor` command’s parsing of `otool` output](https://github.com/rubygems/rubygems/pull/8665), [adding SSL troubleshooting to `bundle doctor`](https://github.com/rubygems/rubygems/pull/8624), [printing WebAuthn authentication links on a separate line for easier access](https://github.com/rubygems/rubygems/pull/8663), [adding an `mtime` argument to `Gem::Package::TarWriter#add_file`](https://github.com/rubygems/rubygems/pull/8673), and [removing the unnecessary `shellwords` autoload](https://github.com/rubygems/rubygems/pull/8644).

We also made substantial progress on the upcoming **Bundler 4** release. We're planning to introduce an environment variable or CLI flag that lets users **opt in to upcoming functionality** and share feedback ahead of the final release.

Another important accomplishment from the team this month include:

**Improved Support for Precompiled Binaries**

- This month, we laid foundational work toward bringing Python-style **wheels** to RubyGem, aimed at improving the overall experience of both **using and producing gems with native extensions**.
- Following several rounds of community feedback, the focus has shifted toward a broader vision: combining **compatibility tags**, **sigstore attestations**, and **common platform build workflows** (with SLSA, trusted publishing, etc.) to streamline how precompiled gems are distributed and consumed.
- We’re actively incorporating the feedback we've received and will be sharing **updated, concrete proposals** for these improvements soon.

## RubyGems.org News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in May was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org) and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

[RubyGems.org](http://rubygems.org/) served **4.06 billion gems** in May 2025 — up from **2.87 billion** in May 2024. The busiest day was Wednesday, May 14th, with a record-breaking 193 million downloads, while the quietest was Saturday, May 31st, with 36 million.  Star of the Month goes to [`gitlab-crystalbal](https://rubygems.org/gems/gitlab-crystalball/)l` (gem inspired by [Predicting Test Failures](https://tenderlovemaking.com/2015/02/13/predicting-test-failues.html#) post by top [RubyGems.org](http://rubygems.org/) maintainer [tenderlove](https://rubygems.org/profiles/tenderlove)), a new gem published on May 8th, already reaching 785,000 downloads in its debut month!

**Ruby Usage Stats 2024-2025**

Ruby version usage continues to trend steadily toward modern releases. In May 2025, Ruby 3.3 became the most widely used version, growing to 24.25%, while Ruby 3.4, released in December 2024, jumped to 9.3% adoption in just five months. Ruby 3.2 held stable at 33%, but its share may begin declining soon as newer versions take over. Meanwhile, Ruby 3.1, which reached end-of-life on March 31, 2025, dropped from 25.3% a year ago to 14.5%. Ruby 3.0, already EOL since April 2024, continues to decline (now 3.5%), and older Ruby 2.x versions are steadily fading as the ecosystem moves forward.

*Note: These numbers represent all downloads in given month, not only downloads of Bundler gem as in previous month*

The following are highlights of what the team worked on this month:

**Experimental Namespacing Lands in Ruby Master**

- A new **experimental namespacing** feature has been introduced in Ruby master, allowing the creation of **virtual top-level namespaces**.
- This enables applications to `require` or `load` libraries in isolation from the global namespace—including `.rb` files and native extensions. Dependencies loaded within a namespace remain confined to it.
- Namespacing helps avoid **name conflicts** between libraries that define the same modules or classes, and prevents **unintended sharing of global objects**.
- The feature is fully compatible with libraries that use relative name resolution and opens the door for safer, more modular Ruby applications.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@jbampton](https://github.com/jbampton) John Bampton
- [@larouxn](https://github.com/larouxn) Nicholas La Roux
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@matthewhively](https://github.com/matthewhively) Matthew Hively
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@ntkme](https://github.com/ntkme) なつき
- [@ntl](https://github.com/ntl) Nathan Ladd
- [@rwstauner](https://github.com/rwstauner) Randy Stauner
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@tangrufus](https://github.com/tangrufus) Tang Rufus
- [@thatrobotdev](https://github.com/thatrobotdev) James Kerrane
- [@unasuke](https://github.com/unasuke) Yusuke Nakamura
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@antoinem](https://github.com/antoinem) Antoine Marguerie
- [@woodruffw](https://github.com/woodruffw) William Woodruff

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@mghaught](https://github.com/mghaught) Marty Haught
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
