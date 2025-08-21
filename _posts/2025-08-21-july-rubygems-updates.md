---
title: July 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in July. 

# RubyGems News

In July, we shipped [**Bundler 2.7.0**](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#270-2025-07-16) and [**RubyGems 3.7.0**](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#370--2025-07-16), marking a major milestone in our roadmap toward Bundler 4. These releases introduce the new `simulate_version` setting, making it easier for developers to test breaking changes early and share feedback. We also continued work on long-requested improvements across RubyGems and Bundler, including experimental support for prebuilt binaries.

**Bundler 2.7.0 and RubyGems 3.7.0 are out!**

- This release marks a major milestone in the roadmap toward Bundler 4. With `bundle config simulate_version 4`, users can now try out upcoming breaking changes in Bundler 4 ahead of time, helping gather feedback and ease the eventual transition.
- Although the releases were mostly complete last month, we took additional time to carefully review and tag unreleased changes so our tooling could generate a clean and informative changelog. We also [published a blog post](https://www.notion.so/December-2024-Newsletter-150d7bddd38780988929f2d399093288?pvs=21) summarizing the highlights of the release, and the release was mentioned in [Ruby Weekly](https://rubyweekly.com/issues/759) and [Reddit](https://www.reddit.com/r/ruby/comments/1m22l57/bundler_bundler_v27_last_release_before_bundler_4/).
- As part of the post-release cycle, we addressed some reported issues and community feedback:
    - The planned change to install gems in a `.bundle` folder per application (instead of globally) has been [**delayed**](https://github.com/rubygems/rubygems/pull/8867), pending resolution of known issues. We still hope to ship this in Bundler 4.
    - The deprecation of `bundle install --force` has been [**reverted**](https://github.com/rubygems/rubygems/pull/8843), following user feedback.

[**Improvements in Bundler CLI documentation**](https://github.com/rubygems/rubygems/pull/8861)

- We noticed that some CLI commands and flags were not properly documented, making them harder for users to discover. Thanks to a [contribution](https://github.com/rubygems/rubygems/pull/8861) by [@Edouard-Chin](https://github.com/Edouard-Chin), we now have a CI check that ensures new commands and flags are reflected in the official documentation.
- The implementation introspects Thor commands and flags used by Bundler and verifies they are included in the man pages, making the CLI more consistent and discoverable.

**Gems with Prebuilt Binaries**

- After months of groundwork and iteration, experimental support for Python-style “wheels” has landed in RubyGems, thanks to [@segiddins](https://github.com/segiddins).
- This work introduces a new compatibility model for gems with native extensions, using `tag sets` (inspired by Python) to represent which platforms a gem can run on. This solves long-standing limitations in the legacy `Gem::Platform` system, which struggled to represent both "what can run" and "what's running now" in a backward-compatible format.
- The feature is still under active development and review, and a formal RFC is coming soon. Support in Bundler will follow before this ships more broadly.

## RubyGems.org News

This month, [RubyGems.org](https://rubygems.org/) continued to scale and improve its services with the support of our infrastructure donors: [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

**RubyGems.org Organizations launches in private beta**

- [Organizations](https://guides.rubygems.org/organizations/getting-started/) is one of the longest-standing feature requests for [RubyGems.org](https://rubygems.org/). It allows teams and companies to better manage ownership and permissions across multiple gems under a shared namespace.
- We’ve launched the feature in **private beta**, and are currently collecting feedback from early users. We plan to open it up to more teams in the coming weeks. More information will be shared in an upcoming blog post.

## **Thank you**

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@dgonzdev](https://github.com/dgonzdev) Dgonzdev
- [@rye-stripe](https://github.com/rye-stripe) Peteris Rudzusiks
- [@djbender](https://github.com/djbender) Derek Bender
- [@roberthopman](https://github.com/roberthopman) Robert Hopman
- [@indirect](https://github.com/indirect) André Arko
- [@hlascelles](https://github.com/hlascelles) Harry Lascelles
- [@Edouard-chin](https://github.com/Edouard-chin) Edouard Chin
- [@rhenium](https://github.com/rhenium) Kazuki Yamaguchi
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@mghaught](https://github.com/mghaught) Marty Haught
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@landongrindheim](https://github.com/landongrindheim) Landon Grindheim
- [@a-mitch](https://github.com/A-Mitch) Alex Mitchell
- [@qrush](https://github.com/qrush) Nick Quaranto
- [@spikex](https://github.com/spikex) Spike Ilacqua
- [@arunagw](https://github.com/arunagw) Arun Agrawal
- [@jeffwidman](https://github.com/jeffwidman) Jeff Widman
- [@mullermp](https://github.com/mullermp) Matt Muller

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
