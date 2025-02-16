---
title: January 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January. 

# Open Source Program Announcements

### Our Security Engineer in Residence’s year in review

[Samuel Giddins](https://github.com/segiddins) published a [review of his 2024 work](https://traveling.engineer/posts/2024-in-review/) as Security Engineer in Residence at [Ruby Central](https://rubycentral.org/).  It was a busy year with the [sigstore](https://www.sigstore.dev/) work as the centerpiece.  He finishes with an overview of what he’ll focus on in 2025.

## RubyGems News

In January, we released RubyGems [3.6.3](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#363--2025-01-16) and Bundler [2.6.3.](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#263-january-16-2025) These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include adding the [credentials file path to `gem env`](https://github.com/rubygems/rubygems/pull/8375), preventing [fallback to evaluating YAML `gemspecs` as Ruby code](https://github.com/rubygems/rubygems/pull/8404), adding [support for the Mise version manager file](https://github.com/rubygems/rubygems/pull/8356), and including [Ruby 3.5 in Gemfile DSL platform values](https://github.com/rubygems/rubygems/pull/8365) for better compatibility.

Some other important accomplishments from the team this month include:

[**Improvements to the Bundler documentation site**](https://bundler.io/docs.html) 

- The end-of-year Bundler release required documentation updates, but the process was challenging due to warnings, outdated dependencies, and minor issues. Additionally, longstanding problems (such as poor SEO and broken links caused by recent structural changes in the [rubygems/rubygems](https://github.com/rubygems/rubygems) repository) needed attention.
- To improve the site, we addressed build warnings, upgraded all dependencies, fixed broken links, and enhanced SEO to make the Bundler documentation easier to find and navigate.

[**Improved “multi-Ruby” lockfile support**](https://github.com/rubygems/rubygems/pull/8401)

- In Bundler 2.6 we implemented several changes to allow the same lockfile to be used across different Ruby versions, however, a minor issue was reported related to this functionality.
- To address this, we introduced an additional update to minimize lockfile changes when switching between Ruby versions, reducing unnecessary modifications and improving stability.

[**Bundler support for ARM architecture on Windows**](https://github.com/rubygems/rubygems/pull/8428)

- Windows RubyInstaller2 added support for running Ruby on ARM architecture and we received a community contribution to enable Bundler compatibility. However, the existing Windows support code was somewhat cumbersome, making it difficult for the contributor to complete the implementation.
- To resolve this, we reworked how `platform: :windows` is handled in the Gemfile, which was the primary blocker. We also refactored the logic to ensure that the `:windows` value can accommodate similar scenarios in the future.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in January was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org) and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

[**Fixed endless 5xx responses leading to pages**](https://github.com/rubygems/rubygems.org/pull/5392)

- Rails returned response headers exceeding Nginx’s 4KB limit, triggering an `upstream sent too big header` error and causing persistent **502 Bad Gateway** responses. The issue stemmed from the `Redirector middleware`, which generated **301 redirects** with excessively long **Location headers**, particularly for `api.rubygems.org`. Debugging was further complicated by a logging issue that hid these errors.
- We fixed the logging pipeline to correctly capture errors and updated the middleware to prevent oversized headers. This fix was tested and verified in staging, successfully resolving the 502 errors.

**Upgraded to Ruby 3.4.1**

- We upgraded RubyGems.org to Ruby 3.4.1 to ensure compatibility with the latest Ruby version and take advantage of performance improvements and security updates.

[**Removed the** **`Forwarded` and `X-Forwarded-Host` headers**](https://github.com/rubygems/rubygems.org/pull/5409)

- We removed the `Forwarded` and `X-Forwarded-Host` headers to enhance security and mitigate the risk of header spoofing attacks.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@simi](https://github.com/simi) Josef Šimánek
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@soda92](https://github.com/soda92) Maple
- [@kyanagi](https://github.com/kyanagi) Kouhei Yanagita
- [@Vasfed](https://github.com/Vasfed) Vasily Fedoseyev
- [@joshleblanc](https://github.com/joshleblanc) Josh LeBlanc
- [@rykov](https://github.com/rykov)  Michael Rykov
- [@johnnyshields](https://github.com/johnnyshields) Johnny Shields
- [@the-spectator](https://github.com/the-spectator) Akshay Birajdar
- [@edouard-chin](https://github.com/Edouard-chin) Edouard Chin
- [@ntkme](https://github.com/ntkme) なつき
- [@larskanis](https://github.com/larskanis) Lars Kanis

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@w-masahiro-ct](https://github.com/w-masahiro-ct) Masahiro
- [@huacnlee](https://github.com/huacnlee) Jason Lee
- [@gemmaro](https://github.com/gemmaro) Gemmaro
- [@kairoaraujo](https://github.com/kairoaraujo) Kairo Araujo
- [@adrianthedev](https://github.com/adrianthedev) Adrian Marin
- [@MilaZhou22](https://github.com/MilaZhou22) MilaZhou22
- [@skatkov](https://github.com/skatkov) Stanislav (Stas) Katkov

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.