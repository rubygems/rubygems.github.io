---
title: February 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in February. 

## RubyGems News

In February, we released RubyGems [3.6.4](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#364--2025-02-17), [3.6.5](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#365--2025-02-20) and Bundler [2.6.4](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#264-february-17-2025), [2.6.5](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#265-february-20-2025)[.](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#263-january-16-2025) These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include removing [`gem server` from `gem help` to streamline command output](https://github.com/rubygems/rubygems/pull/8507), raising a [clearer error message when RubyGems fails to activate a dependency](https://github.com/rubygems/rubygems/pull/8449), ensuring Bundler correctly [considers gems under `platform: :windows`](https://github.com/rubygems/rubygems/pull/8428) in the Gemfile when running on Windows with ARM architecture, and fixing a resolver issue caused by [incorrectly defined version ranges](https://github.com/rubygems/rubygems/pull/8503).

Some other important accomplishments from the team this month include:

**Upgrading Kubernetes cluster to v1.32 and our OpenSearch cluster to v2.17**

- We regularly update our infrastructure systems to ensure we’re taking advantage of the latest software features and security patches. This upgrade was scheduled and performed seamlessly without impacting users.

**Developing wheels for RubyGems**

- A proposal is in progress to introduce **"wheels" for RubyGems**, improving the gem build process until every gem ships precompiled binaries.
- This is better for security as it eliminates the need to execute code during installation. It’s also a huge improvement for the gem install experience thanks to removing the need for build tools, avoiding compilation errors, and reducing installation time. An outline of the project goals has been published at [traveling.engineer](https://traveling.engineer/posts/goals-for-binary-gems/), and implementation sketches are in the works.

**Resolution improvements in Bundler**

- A release of Ruby 3.4.2 introduced incorrect gemspec dependencies for `net-smtp`, leading to multiple bug reports. To prevent similar issues in the future, Bundler now attempts to automatically [fix incorrect dependencies in the lockfile](https://github.com/rubygems/rubygems/pull/8483) whenever possible. When auto-fixing is not possible (e.g., in frozen mode), Bundler now provides clearer error messages to help users resolve the issue.
- Depfu reported cases where Bundler 2.6 was unexpectedly downgrading dependencies. This was fixed by ensuring [Bundler properly respects locked versions](https://github.com/rubygems/rubygems/pull/8491) and re-adds necessary lower bound requirements.
- Investigating these issues also led to fixing the [only known issue in our resolver engine (pub_grub)](https://github.com/rubygems/rubygems/pull/8503), improving Bundler’s dependency resolution logic.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in February was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org) and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

**Fixed API key role creation for Buildkite**

- A system test was added to fix an issue where creating an [API Key Role for Buildkite incorrectly assigned a GitHub Actions principal](https://github.com/rubygems/rubygems.org/pull/5434) instead of the correct Buildkite principal. This happened because the form defaulted to GitHub OIDC settings, hiding the principal input and preventing users from changing it.
- The fix removes the unnecessary principal assignment, allowing the correct value to be set automatically for GitHub Actions and Buildkite, ensuring smoother API Key Role creation.

## **RubyGems Ecosystem News**

This is where we highlight exciting updates made to Ruby infrastructure projects that support our RubyGems work.

### Sigstore

**sigstore-ruby**

- The **sigstore-ruby** client is nearly ready for its **0.3.0 release**, bringing **improved spec compliance** and **JRuby support**.
- Adding JRuby support was particularly challenging, as it required the reimplementation of certain cryptographic operations using Java security APIs instead of relying on the `jruby-openssl` gem.
- You can read more about the development of sigstore-ruby in [Sam’s 2024 year in review](https://traveling.engineer/posts/2024-in-review/?ref=rubycentral.org#sigstore-ruby).

**Ecosystem adoption**

- A tracker has been launched to monitor sigstore adoption among the most popular gems: [Are We Attested Yet?](https://segiddins.github.io/are-we-attested-yet/)
- Currently, 20 of the top gems are shipping attestations, and efforts are ongoing to help more maintainers integrate sigstore signing into their release workflows.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@johnnyshields](https://github.com/johnnyshields) Johnny Shields
- [@edouard-chin](https://github.com/Edouard-chin) Edouard Chin
- [@y-yagi](https://github.com/y-yagi) Y Yagi
- [@saraid](https://github.com/saraid) Michael Chui

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@yob](https://github.com/yob) James Healy
- [@kachick](https://github.com/kachick) Kenichi Kamiya

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.