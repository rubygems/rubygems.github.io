---
title: November 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in November.

## RubyGems News

In November, we released RubyGems [3.5.23](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3523--2024-11-05) and Bundler [2.5.23](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2523-november-5-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include [validating the user input encoding for gem CLI arguments](https://github.com/rubygems/rubygems/pull/6471) and ensuring the`--enable-load-relative` binstubs prolog works correctly [when Ruby is not installed in the same directory as the binstub](https://github.com/rubygems/rubygems/pull/7872). Additionally, we [updated the `--ext=rust` option to support compiling native extensions from source](https://github.com/rubygems/rubygems/pull/7610) and [resolved an issue where `bundle check`](https://github.com/rubygems/rubygems/pull/8148) could sometimes lock gems under the wrong source.

Some other important accomplishments from the team this month include:

**Welcoming First-Time Contributors**

We’re thrilled to see an influx of new contributors and are focusing on making contributions seamless and enjoyable.

- [**@soda92**](https://github.com/soda92), a new Ruby enthusiast working on Windows, contributed extensively by:
    - Improving setup documentation for Windows developers.
    - Fixing broken links, unifying documentation, and enhancing the README to better explain what RubyGems is.
    - Adding debugging instructions for Windows, improving RSpec tests, and fixing a `bundle exec` issue on Windows.
- [**@andrew**](https://github.com/andrew) enhanced `bundle fund` by creating its missing man page and extended his work to cover other missing man pages. He also added a spec to ensure all Bundler commands remain fully documented.
- [**@jeromedalbert**](https://github.com/jeromedalbert) has been a consistent contributor, helping with issue triaging, documentation, and bug fixes. Notably, he updated the CONTRIBUTING guide link, fixed issues with `bundle remove`, and added the spec for ensuring command documentation.
- [**@marcoroth**](https://github.com/marcoroth) and [**@gemmaro**](https://github.com/gemmaro) made their first contributions by improving the default output of `bundle gem`.

We deeply appreciate the efforts of all contributors in making RubyGems and Bundler better for everyone! 🎉

**Auditing and Updating Vendored Dependencies to the Latest Versions**

- November and December are dedicated to thorough housekeeping to prepare for the final releases of RubyGems and Bundler. This includes updating all development and test dependencies, either via Dependabot PRs or manually, and ensuring compatibility with the latest Ruby patch levels, including Ruby 3.4. Daily CI against `ruby-head` has also been verified as green.
- We also improved license management by fixing the weekly automated PR process for new SPDX licenses and updating the license list with the latest additions. These updates ensure a polished and reliable release for all users.

**Bundler 2.6 and RubyGems 3.6 Coming Soon**

- The upcoming releases of Bundler 2.6 and RubyGems 3.6, set for early December, include significant improvements and new features. The checksums feature is now ready for beta release, with fixes based on early feedback. Resolution enhancements bring [smarter auto-fixing of incorrect lockfiles](https://github.com/rubygems/rubygems/pull/8103), [better handling of git dependencies](https://github.com/rubygems/rubygems/pull/8269), and [improved conservativeness of `bundle install`](https://github.com/rubygems/rubygems/pull/8281) . We’ve also [reverted to the previous git gems cache format](https://github.com/rubygems/rubygems/pull/8296) to resolve adoption issues while retaining critical fixes.
- Additional updates include [improved lockfile support for users switching between stable and development Ruby versions](https://github.com/rubygems/rubygems/pull/8251), security enhancements to [better redact credentials](https://github.com/rubygems/rubygems/pull/8222) in [Bundler outputs](https://github.com/rubygems/rubygems/pull/8283), and [performance improvements like parallelized `bundle install --local`](https://github.com/rubygems/rubygems/pull/8248) and performance-focused RuboCop checks.

In November, RubyGems gained [194 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-11-01%7D...master@%7B2024-11-31%7D) contributed by 18 authors. There were 3,441 additions and 1,360 deletions across 248 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in November was provided by [AWS](https://aws.amazon.com/), [Fastly](https://www.fastly.com/), and [DataDog](https://www.datadoghq.com/).

The following are highlights of what the team worked on this month:

[**Introducing Organizations on RubyGems.org**](https://github.com/rubygems/rubygems.org/pull/5201)

- Organizations were added to [RubyGems.org](http://rubygems.org/) to help teams and businesses manage gems and users under a single umbrella. The new **Organization Onboarding** feature simplifies migrating gems to an Organization by allowing users to provide organization details, select gems, and assign roles to users.
- After confirming the details, the onboarding process automatically links gems to the Organization, creates Membership records, establishes the Organization, and removes outdated Ownership records, streamlining team and business gem management.

[**Streamlined Profile Update Experience**](https://github.com/rubygems/rubygems.org/pull/5250)

- We’ve improved the profile update workflow to prevent unnecessary frustration when a password is missing. Previously, if users updated their email but forgot to include their password, the page would reload, display an error, and require the email to be re-entered.
- Now, when submitting the form without a password, the page will focus on the password field and display a prompt, allowing users to enter their password without losing any previously entered information.

[**Improved Control for Yanked Gems**](https://github.com/rubygems/rubygems.org/pull/5260)

- We’ve introduced updates to ensure gem owners retain access to critical controls even when all versions of a gem are yanked.
- Owners can now manage ownerships, trusted publishers, and push new gem versions through a streamlined sidebar view. For non-owners, the adoption option will remain visible if it's currently active. This enhancement helps maintain seamless management and transparency for gem owners.

In November, [RubyGems.org](http://rubygems.org/) gained [78 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-11-01%7D...master@%7B2024-11-31%7D) contributed by 9 authors. There were 4,530 additions and 596 deletions across 173 files.

## RubyGems Ecosystem

Here we outline additional exciting updates made to other projects in the RubyGems Ecosystem.

### Ruby Toolbox

[**Ruby Toolbox Frontend Stack Update**](https://github.com/rubytoolbox/rubytoolbox/pull/1461)

- The Ruby Toolbox frontend now uses `vite-rails` for asset bundling, ensuring compatibility with Rails 8. This upgrade replaces the previous `Sprockets/Webpacker` setup.
- During the migration, we resolved legacy JavaScript issues and replaced an outdated autocompleter library, streamlining and modernizing the frontend.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@simi](https://github.com/simi) Josef Šimánek
- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@samisalamiws](https://github.com/samisalamiws) Samisalamiws
- [@timon](https://github.com/timon) Artem Ignatyev
- [@soda92](https://github.com/soda92) Maple
- [@andrew](https://github.com/andrew) Andrew Nesbitt
- [@larskanis](https://github.com/larskanis) Lars Kanis
- [@adam12](https://github.com/adam12) Adam Daniels
- [@mame](https://github.com/mame) Yusuke Endoh
- [@gemmaro](https://github.com/gemmaro) Gemmaro
- [@djberube](https://github.com/djberube) David J Berube
- [@indirect](https://github.com/indirect) André Arko
- [@corsonknowles](https://github.com/corsonknowles) Dave Corson-Knowles
- [@eregon](https://github.com/eregon) Benoit Daloze
- [@marcoroth](https://github.com/marcoroth) Marco Roth

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@kairoaraujo](https://github.com/kairoaraujo) Kairo Araujo
- [@kinsomicrote](https://github.com/kinsomicrote) Kingsley Chijioke
- [@jacklynhma](https://github.com/jacklynhma) Jacklyn Ma

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.