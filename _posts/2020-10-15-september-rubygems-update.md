---
title: September 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

# September 2020 RubyGems Updates

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems, Ruby Toolbox and RubyGems.org in September.

## RubyGems News
This month, We did a lot of work triaging issues and so far we're "**winning the pulse**" with over **80 issues**  closed in relation to only **14 opened**, and **44 PRs** merged in relation to **8 opened**. We've also fixed a couple of new and outstanding issues some of which include:

* [Fixed Resolver recently generating duplicate spec groups](https://github.com/rubygems/rubygems/pull/3965) making debug output much more verbose than it should.
* Fixed installing a local `gemspec` without dependencies [unnecessarily hitting the network](https://github.com/rubygems/rubygems/pull/3968).
* Fixed bundler showing [some unnecessary warnings from git when using submodules](https://github.com/rubygems/rubygems/pull/3969).
* Fixed [`--build-root` option to gem install broken on Windows](https://github.com/rubygems/rubygems/pull/3975).
* Fixed [`--build-root` option to gem install broken when gems with rubygems plugins are present on the system](https://github.com/rubygems/rubygems/pull/3972).
* Fixed `ruby setup.rb` [unnecessarily rewriting the bundler gemspec](https://github.com/rubygems/rubygems/pull/3980).
* Fixed situations where [bundler would crash if running on a path including brackets.](https://github.com/rubygems/rubygems/pull/3854)
* We've [shipped the `bundle fund` command](https://github.com/rubygems/rubygems/pull/3390) that lists out all the URLs for `gems` whose maintainers are actively looking for funding.
* Responded to HackerOne reports for RubyGems.
* Merged a PR [adding docs about Gemstash.](https://github.com/rubygems/guides/pull/266)
* [Updated docs to recommend Gemstash instead of gem server.](https://github.com/rubygems/guides/pull/269)
* Added a note about [credentials in the rubygems.org repo being fake, in response to a HackerOne report.]( https://github.com/rubygems/rubygems.org/pull/2530)
* Caught up with changes in `ruby-core` regarding versioning default gems. ([#3937](https://github.com/rubygems/rubygems/pull/3937) and [#3938](https://github.com/rubygems/rubygems/pull/3938))
* Fixed [issue with configuration priority.](https://github.com/rubygems/rubygems/pull/3933)
* [Deprecated  bundle cache --all.](https://github.com/rubygems/rubygems/pull/3932)
* Created a unified release & changelog management workflow.
* Worked on breaking [#3317](https://github.com/rubygems/rubygems/issues/3317) into multiple more actionable issues ([#3317](https://github.com/rubygems/rubygems/issues/3317#issuecomment-692449034) and [#3957](https://github.com/rubygems/rubygems/issues/3957))
* Fixed some issues with CI to adapt to `ruby-core` changes.

In addition, we worked on other fixes including enabling disable_multisource and figuring out the different new behaviours it enables and a bunch of other `test/dev` issues and reviewed PRs from external contributors.

In September, Rubygems gained [150 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-09-01%7D...master@%7B2020-09-30%7D), contributed by 12 authors. There were 1263 additions and 4300 deletions across 176 files.

## RubyGems.org News
In September, we released the work done during GSoC 2020 for adding support of [managing owners using UI](https://guides.rubygems.org/managing-owners-using-ui/) and confirmation of ownership addition. Many thanks to rubygems.org GSoC student [@vachhanihpavan](https://github.com/vachhanihpavan) for doing an excellent job.
* refactored and deployed [GSoC project on managing owners from the web UI and requirement of ownership confirmation.](https://github.com/rubygems/rubygems.org/pull/2357)
* profiled `#perform` method of Fastly log processor job and [updated it to fetch versions from DB in bulk.](https://github.com/rubygems/rubygems.org/pull/2510)
*  updated client side PR to identify scope as per the command and update scope in case of forbidden response. ([#1962](https://github.com/rubygems/rubygems.org/pull/1962) and [#3840](https://github.com/rubygems/rubygems/pull/3840))
* updated [IPv4 fallback PR to add configuration, flag and tests for the configuration and made a failed attempt at adding tests for the fallback.](https://github.com/rubygems/rubygems/pull/2662)
* [verified ownership and deploy namespace release of `ruby stdlib`](https://github.com/rubygems/rubygems.org/pull/2506)
* updated [API scopes client PR to fix OTP fallback and with tests](https://github.com/rubygems/rubygems/pull/3840)
* setup zendesk slack integration and explore using their web widget as stand alone web form.
* removed gauges javascript file from [rg.org](https://rg.org) site and made a PR to migrate help links to zendesk ([#3840](https://github.com/rubygems/rubygems/pull/3840) and [#2518](https://github.com/rubygems/rubygems.org/pull/2518))
* deprecated [help.rubygems.org](https://help.rubygems.org/) in favor of [support@rubygems.org](mailto:support@rubygems.org) to resolve the issue of genuine help tickets being marked as spam.
* responded to support tickets and google group threads.

This month, Rubygems.org gained [31 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-09-01%7D...master@%7B2020-09-30%7D), contributed by 5 authors. There were 2467 additions and 292 deletions across 85 files.

## Ruby Toolbox

On [Ruby Toolbox](https://www.ruby-toolbox.com/) we've added a display of the [repository README for each library](https://github.com/rubytoolbox/rubytoolbox/pull/731) which will hopefully be useful for quickly evaluating projects more in depth on top of the usual metrics directly on the site.

* Bringing lines-of-code stats to the site so you can have an indication of the size and complexity of the library at a glance.
* An official command line client that gives you quick access to data served by the recently launched API, including a report on the health status of your dependencies
* Providing an alternate database dump that excludes historical gem download stats, since they make up the majority of the dump size and make imports very slow, so if you just want some real data to work with it's become a bit cumbersome at this point

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.tation, writing and/or updating documentation, and bug triage.
