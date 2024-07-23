---
title: June 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in June.

## RubyGems News

In June, we released RubyGems [3.5.12](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3512--2024-06-13), [3.5.13](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3513--2024-06-14), and [3.5.14](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3514--2024-06-21) , and Bundler [2.5.12](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2512-june-13-2024), [2.5.13](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2513-june-14-2024), and [2.5.14](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2514-june-21-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include: an improvement to [auto-switch to the locked Bundler version](https://github.com/rubygems/rubygems/pull/7719) even when using `binstubs`, a fix for duplicated config keys generated when the `fallback_timeout` URI option is used, and a fix for slow and incorrect resolution when adding `sorbet` to a Gemfile if the lockfile only includes "RUBY" in the platforms section.

Some other important accomplishments from the team this month include:

[**A better out of the box experience when creating new gems with `bundle gem`**](https://github.com/rubygems/rubygems/pull/7707)

- A user alerted us to a potential source of friction in the gem creation process: users needing to edit all the TODOs in the gemspec prior to running Bundler and dummy generated tests.
- The issue was, values like e.g the gem’s homepage, source code and changelog URIs, while important, are not what users have in mind (yet) when they create a new gem. They just want to start working on the new gem. In many cases inputting this information can be delayed until gem build/push time.
- Due to internal RubyGems methods we’ve added to validate gems that have a few different usages — like [RubyGems.org](http://rubygems.org/), Bundler and RubyGems — it would have been risky to change validations just for Bundler (and as a result relax validations everywhere). The alternative, adding a new parameter to `Gem::Specification#validate`, felt like complicating things too much. So we went with adding a new `Gem::Specification#validate_for_resolution` method just for Bundler that skips validations that are non essential for Bundler to work with a local gemspec.

[**Fixing longstanding issues with plugins by tracking them in the `Gemfile.lock` file**](https://github.com/rubygems/rubygems/pull/6957)

- A couple of frustrations with plugins specified via Gemfile have been coming up for years: they are constantly reinstalled, and they cause unnecessary resolution metadata to be fetched, even in deployment mode. We want to encourage people to create and use Bundler plugins by ensuring they have a smooth usage experience.
- After a few iterations, we realized we can treat plugins the same as regular gems and therefore avoid all the unnecessary work by having a lockfile. So the solution ended up being simple: including plugins as gems in the lockfile.
- We need to do some backwards compatibility work around making changes to the lockfile but aside from that, we expect this solution to resolve most of the issues.

[**Bundler specs will now use the Compact Index by default**](https://github.com/rubygems/rubygems/pull/7669)

- As a first step to providing a way to opt-in to lockfile checksums, we want to make sure most Bundler specs use the compact index (that exercises checksums under the hood).
- Bundler specs currently use the fallback to the full index by default. This is a very rare working mode these days since it requires that all dependency APIs fail. In addition to that, the full index does not provide checkums. Switching to using the compact index by default will give us confidence to enable lockfile checksums.
- It was a very big PR with bulk changes migrating from file:// sources that skip dependency APIs to dummy https sources that do exercise the compact index. It was a bit tricky to get everything passing but we trust it is safe as most of the changes are confined to test code.

In June, RubyGems gained [153 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-6-01%7D...master@%7B2024-6-31%7D) contributed by 18 authors. They were 5,907 additions and 4,833 deletions across 231 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/?ref=rubycentral.org) in June was provided by [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [DataDog](https://www.datadoghq.com/?ref=rubycentral.org). The following are highlights of what the team worked on this month:

**RubyGems Organization Accounts**

- We are building a new feature for [RubyGems.org](http://RubyGems.org) that will allow organization accounts, memberships and increased control over gem permissions. The feature will give gem owners more precise control over ownership of gems and permissions for organization members.
- We know that nuance is required when introducing this additional layer of organization into the existing RubyGems.org framework and we plan to introduce the new feature without disrupting existing workflows.
- This month, we created user flows to identify potential challenges and edge cases, refactored permissions models to use the well-known Pundit gem, and added basic models in preparation for the feature.

[**Aligning Authentication on RubyGems.org with best practices**](https://github.com/rubygems/rubygems.org/milestone/17)

- Back in January when we released details about [an MFA bypass in the password reset](https://blog.rubygems.org/2024/03/15/password-reset-vulnerability.html) process, it became clear that our MFA strategy was not applied uniformly in a way that helped us reduce mistakes. We have some flows that don’t follow [OWASP guidelines for password resets](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html), email tokens, or MFA.
- [@martinemde](https://github.com/martinemde) has been working to carefully refactor all MFA interaction points in RubyGems.org, increasing test coverage and unifying MFA processes under a single code path. We have adopted many of the best practices for securing authentication processes as defined by OWASP and other guidelines.
- One example is, we have now stopped our previous practice of auto-sign-in after password changes or email confirmations to ensure that all processes that can result in a session must pass through through the full sign-in process.

## Ruby Ecosystem News

Here we outline additional exciting updates made to other projects in the Ruby Ecosystem.

### Ruby Toolbox

[**Making local setup and codespaces based contributions to the Ruby Toolbox easier**](https://www.ruby-toolbox.com/blog/2024-05-31/devcontainers)

- Data dumps are quite large nowadays and importing them locally can take hours. It would be helpful to provide a slim data dump for a realistic but small local development dataset, to create a more accessible way of contributing to the site itself.
- [@colszowka](https://github.com/colszowka) has added partial production database exports to the Ruby Toolbox, making it easier to get a realisitc dataset for development purposes. Alongside this, there is now a devcontainer setup for easier local or browser-based development environment setup, for example using Codespaces.

[**Making historical and recent security advisories for RubyGems visible on the Ruby Toolbox**](https://github.com/rubytoolbox/rubytoolbox/issues/1196)

- To increase transparency and ensure everyone has the latest database information, work by Christoph is underway to import the Ruby advisory database to the Ruby Toolbox, for displaying security advisories on the site. The data is already being imported, with the remaining step being to actually show it on the UI.

In June, [RubyGems.org](http://rubygems.org/) gained [110 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-6-01%7D...master@%7B2024-6-31%7D) contributed by 11 authors. There were 3,655 additions and 2,518 deletions across 211 files.

## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@tompng](https://github.com/tompng) Tomoya Ishida
- [@sobrinho](https://github.com/sobrinho) Gabriel Sobrinho
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@MSP-Greg](https://github.com/MSP-Greg) MSP Greg
- [@kddnewton](https://github.com/kddnewton) Kevin Newton
- [@kateinoigakukun](https://github.com/kateinoigakukun) Yuta Saito
- [@Earlopain](https://github.com/Earlopain) Earlopain
- [@alexeyschepin](https://github.com/alexeyschepin) Alexey Schepin
- [@x-yuri](https://github.com/x-yuri) X Yuri
- [@simi](https://github.com/simi) Josef Šimánek
- [@ccmywish](https://github.com/ccmywish) CCMyWish
- [@thomasmarshall](https://github.com/thomasmarshall) Thomas Marshall
- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert

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
- [@robbyrussell](https://github.com/robbyrussell) Robby Russell
- [@gemmaro](https://github.com/gemmaro) Gemmaro
- [@okuramasafumi](https://github.com/okuramasafumi) Okura Masafumi
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
