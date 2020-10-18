---
title: September 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

# September 2020 RubyGems Updates

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems, Ruby Toolbox and RubyGems.org in September.

## RubyGems News
This month, we did a lot of work triaging issues and so far we're "**winning the pulse**" with over **80 issues**  closed vs only **14 opened**, and **44 PRs** merged vs **8 opened**. We've also fixed a couple of new and outstanding issues some of which include:

* [fixing resolver](https://github.com/rubygems/rubygems/pull/3965), which until recently was generating duplicate spec groups, making debug output much more verbose than it should.
* improving install for a local `gemspec` to prevent dependencies [unnecessarily hitting the network](https://github.com/rubygems/rubygems/pull/3968).
* fixing bundler showing [some unnecessary warnings](https://github.com/rubygems/rubygems/pull/3969) from git when using submodules.
* fixing the `--build-root` option to gem install which was [broken on Windows](https://github.com/rubygems/rubygems/pull/3975) and broken when gems [with rubygems plugins](https://github.com/rubygems/rubygems/pull/3972) were present on the system.
* fixing `ruby setup.rb` [unnecessarily rewriting the bundler gemspec](https://github.com/rubygems/rubygems/pull/3980).
* fixing situations where [bundler would crash](https://github.com/rubygems/rubygems/pull/3854) if running on a path including brackets.
* responding to HackerOne reports for RubyGems.
* adding a note about [credentials in the rubygems.org repo being fake]( https://github.com/rubygems/rubygems.org/pull/2530), in response to a HackerOne report.
* merging a PR [adding docs about Gemstash.](https://github.com/rubygems/guides/pull/266)
* [Updating docs](https://github.com/rubygems/guides/pull/269) to recommend Gemstash instead of gem server.
* catching up with changes in `ruby-core` regarding versioning default gems. ([#3937](https://github.com/rubygems/rubygems/pull/3937) and [#3938](https://github.com/rubygems/rubygems/pull/3938))
* fixing an issue with [configuration priority.](https://github.com/rubygems/rubygems/pull/3933)
* deprecating [bundle cache --all.](https://github.com/rubygems/rubygems/pull/3932)
* creating a unified release & changelog management workflow.
* working on breaking [#3317](https://github.com/rubygems/rubygems/issues/3317) into multiple more actionable issues. ([#3317](https://github.com/rubygems/rubygems/issues/3317#issuecomment-692449034) and [#3957](https://github.com/rubygems/rubygems/issues/3957))
* fixing some issues with CI to adapt to `ruby-core` changes.
* [Shipping the `bundle fund` command](https://github.com/rubygems/rubygems/pull/3390) that lists out all the URLs for `gems` whose maintainers are actively looking for funding.

We also worked on enabling `disable_multisource` and figuring out the different new behaviours it enables, several other `test/dev` issues and reviewing PRs from external contributors.

In September, Rubygems gained [150 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-09-01%7D...master@%7B2020-09-30%7D), contributed by 12 authors. There were 1263 additions and 4300 deletions across 176 files.

## RubyGems.org News

In September we released the [work](https://github.com/rubygems/rubygems.org/pull/2357) done during Google Summer of Code (GSoC) 2020 related to adding support of [managing owners using UI](https://guides.rubygems.org/managing-owners-using-ui/) and confirmation of ownership addition. Many thanks to rubygems.org GSoC student [@vachhanihpavan](https://github.com/vachhanihpavan) for doing an excellent job. 

We also made the following updates and improvements:

* profiled `#perform` method of Fastly log processor job and [updated it to fetch versions from DB in bulk.](https://github.com/rubygems/rubygems.org/pull/2510)
*  updated client side PR to identify scope as per the command, and update scope in case of forbidden response. ([#1962](https://github.com/rubygems/rubygems.org/pull/1962) and [#3840](https://github.com/rubygems/rubygems/pull/3840))
* [updated IPv4 fallback PR](https://github.com/rubygems/rubygems/pull/2662) to add configuration, and flag and tests for the configuration, and began work on adding tests for the fallback.
* [verified ownership and deploy namespace release of `ruby stdlib`](https://github.com/rubygems/rubygems.org/pull/2506).
* updated API scopes client PR [to fix OTP fallback and with tests](https://github.com/rubygems/rubygems/pull/3840).
* setup Zendesk slack integration and explored using their web widget as stand alone web form.
* removed gauges javascript file from [rg.org](https://rg.org) site and made a PR to migrate help links to Zendesk. ([#3840](https://github.com/rubygems/rubygems/pull/3840) and [#2518](https://github.com/rubygems/rubygems.org/pull/2518))
* deprecated [help.rubygems.org](https://help.rubygems.org/) in favor of [support@rubygems.org](mailto:support@rubygems.org) to resolve the issue of genuine help tickets being marked as spam.
* responded to support tickets and google group threads.

This month, Rubygems.org gained [31 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-09-01%7D...master@%7B2020-09-30%7D), contributed by 5 authors. There were 2467 additions and 292 deletions across 85 files.

## Ruby Toolbox

On [Ruby Toolbox](https://www.ruby-toolbox.com/) we've added a display of the [repository README for each library](https://github.com/rubytoolbox/rubytoolbox/pull/731) which will hopefully be useful for quickly evaluating projects more in depth on top of the usual metrics directly on the site. Other upgrades include:

* Bringing lines-of-code stats to the site so you can have an indication of the size and complexity of the library at a glance.
* An official command line client that gives you quick access to data served by the recently launched API, including a report on the health status of your dependencies
* Providing an alternate database dump that excludes historical gem download stats, since they make up the majority of the dump size and make imports very slow, so if you just want some real data to work with it's become a bit cumbersome at this point

Thanks [@colszowka](https://github.com/colszowka) for your work on this project!

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.tation, writing and/or updating documentation, and bug triage.
