---
title: August 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## RubyGems News

In August, we released RubyGems [3.5.17](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3517--2024-08-01) and [3.5.18](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3518--2024-08-26) along with Bundler [2.5.17](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2517-august-1-2024) and [2.5.18](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2518-august-26-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include fixing an issue where [`gem uninstall <name>:<version>` would fail on shadowed default gems](https://github.com/rubygems/rubygems/pull/7949), [enabling lockfile checksums in future Bundler 3](https://github.com/rubygems/rubygems/pull/7805) even when there's no previous lockfile, and fixing an issue where `bundle update <indirect_dep>` would [fail to upgrade when versions are present in two different sources](https://github.com/rubygems/rubygems/pull/7915).

Some other important accomplishments from the team this month include:

[**Fixing an Edge Case Where Bundler Was Removing Platforms Due to Bad Indentation**](https://github.com/rubygems/rubygems/pull/7916)

- We resolved an issue where Bundler was removing platforms and associated gems from `Gemfile.lock` because of bad indentation.
- Now, Bundler auto-fixes indentation by properly stripping whitespace, ensuring badly indented platforms are recognized and retained, which prevents broken dependencies and confusion.

[**Fixing a Source Dependency Confusion in `bundle update <specific_gem>`**](https://github.com/rubygems/rubygems/pull/7915)

- We fixed an issue where `bundle update <specific_gem>` would confuse the source of `<specific_gem>` if an old version existed on a different gem server than specified in the lockfile, allowing smoother gem updates.
- The bug was due to the additional unlocked resolution not using the correct source requirements during `bundle update <specific_gem>`. The fix ensures it now uses the same source requirements as the main resolution.

[**Improved Developer Experience When Setting Up RubyGems With an Unsupported Ruby**](https://github.com/rubygems/rubygems/pull/7942)

- We added a clearer error message when an unsupported Ruby version is detected and the setup process is aborted, improving the process by preventing new developers from being discouraged by obscure errors.
- This change helps people starting to develop RubyGems by immediately informing them if their Ruby version isn't supported.

[**Fixed `gem uninstall <gem>:<version>`** **Failing When Target Gem is Also a Default Gem**](https://github.com/rubygems/rubygems/pull/7949)

- We resolved an issue where `gem uninstall <gem>:<version>` would fail with a confusing error if the target gem was also a default gem, providing a smoother CLI experience.
- The fix skips the default copy of the gem during uninstallation, avoiding the "double uninstall" problem.

[**Fixed Issues With the`--prefer-local` Flag in `bundle install`**](https://github.com/rubygems/rubygems/pull/7951)

- We resolved problems where the `--prefer-local` flag wasn't working effectively; it didn't fallback to remote gems when local ones didn't satisfy requirements and didn't prefer local gems for sub-dependencies.
- We implemented a solution similar to how we handle prereleases: for each gem, first prefer local versions; if conflicts arise, allow remote versions for those specific gems.
- This was inspired by [@gouravkhunger](https://github.com/gouravkhunger), who uses `--prefer-local` to help package Ruby for his Jekyllex project.

[**Helped Appraisals Maintainers Run Tests With Latest Bundler**](https://github.com/rubygems/rubygems/pull/7950)

- Ensured that Appraisals, a library for testing against multiple Gemfiles, [works with the latest Bundler](https://github.com/thoughtbot/appraisal/pull/229) by proposing updates and fixing a small behavior changes in Bundler 2.4 that affected them.
- Appraisals is tightly coupled to Bundler internals, so it's important it remains compatible to detect potential issues in Bundler itself.

In August, RubyGems gained [77 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-8-01%7D...master@%7B2024-8-31%7D) contributed by 8 authors. They were 1,163 additions and 151 deletions across 90 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in August was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [DataDog](https://www.datadoghq.com/?ref=rubycentral.org).

The following are highlights of what the team worked on this month:

[**Prevented AWS Secrets From Being Printed in Logs or Error Messages**](https://github.com/rubygems/rubygems.org/pull/4968)

- We modified the logging and error-handling mechanisms to ensure AWS secrets are sanitized and never outputted.
- Although this issue wasn't occurring in CI, it's crucial to safeguard against future changes that might inadvertently expose sensitive information.

[**Renamed `#search_field`** **to Resolve a Naming Conflict With Rails Internals**](https://github.com/rubygems/rubygems.org/pull/4957)

- The conflict was causing the Rails info page (`/rails/info/routes`) to raise an error, hindering access to important debugging routes.
- To resolve this we changed the method name to eliminate the conflict, restoring normal functionality to the Rails info page.

[**Fixed a Minor Inefficiency in RubyGems Controller**](https://github.com/rubygems/rubygems.org/pull/4953)

- The `GemNameReservation` query was being executed four times per request, leading to potential performance issues.
- We refactored the controller logic to perform the `GemNameReservation` query only once per request, improving efficiency.

[**Fixed Broken Recovery Code Acceptance Tests**](https://github.com/rubygems/rubygems.org/pull/4950)

- Tests were failing due to two issues, blocking the CI pipeline. We addressed each:
    - *Invalid jQuery Selector Length Check*: We corrected the jQuery selector `$("#recovery-code-list").length` to properly detect the element.
    - *Confirmation Dialog Not Triggering on Path Change*: We adjusted the test so that changing the current path triggers the confirm dialog as expected.

[**Optimized API Key Expiration Process by Skipping Already Expired Keys**](https://github.com/rubygems/rubygems.org/pull/4975)

- The existing expiration process was inefficient because it looped through all API keys, including those that were already expired.
- To fix this, we modified the API key expiration routine to process only unexpired API keys, thereby avoiding unnecessary iterations over keys that have already expired.

In August, [RubyGems.org](http://rubygems.org/) gained [57 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-8-01%7D...master@%7B2024-8-31%7D) contributed by 6 authors. There were 134 additions and 137 deletions across 15 files.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@marcoroth](https://github.com/marcoroth) Marco Roth
- [@gouravkhunger](https://github.com/gouravkhunger) Gourav Khunger
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@KJTsanaktsidis](https://github.com/KJTsanaktsidis) KJ Tsanaktsidis
- [@mattbrictson](https://github.com/mattbrictson) Matt Brictson
- [@djberube](https://github.com/djberube) David J Berube
- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@indirect](https://github.com/indirect) André Arko
- [@byroot](https://github.com/byroot) Jean Boussier
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@sunpoet](https://github.com/sunpoet) Po-Chuan Hsieh
- [@eregon](https://github.com/eregon) Benoit Daloze

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@okuramasafumi](https://github.com/okuramasafumi) Okura Masafumi

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
