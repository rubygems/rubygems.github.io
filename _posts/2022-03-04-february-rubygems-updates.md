---
title: February 2022 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Central](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in February.

## RubyGems News

This month in RubyGems, we released new versions for RubyGems [3.3.7](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#337--2022-02-09), [3.3.8](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#338--2022-02-23) and Bundler [2.3.7](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#237-february-9-2022), [2.3.8](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#238-february-23-2022).

The following is a non-exhaustive list of the improvements included in the above releases (see changelogs for more further information):

- resolved some long-standing issues with our CI workflow and worked on some long-standing configuration issues - [#5324](https://github.com/rubygems/rubygems/pull/5324).
- fixed an issue with a corrupt lockfile when you run `bundle check` and have to re-resolve locally - [#5344](https://github.com/rubygems/rubygems/pull/5344).
- fixed typo in multiple gemfiles warning - [#5342](https://github.com/rubygems/rubygems/pull/5342).
- added clarification for `bundle-config` `"with"` option  - [#5346](https://github.com/rubygems/rubygems/pull/5346).
- the `BUNDLE_WITH` and `BUNDLE_WITHOUT` environment variables shouldn't be persistent locally - [#5335](https://github.com/rubygems/rubygems/pull/5335).

In February, Rubygems gained [45 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2022-02-01%7D...master@%7B2022-02-31%7D), contributed by 9 authors. There were 252 additions and 160 deletions across 58 files.

## RubyGems.org News

This month, RubyGems.org saw several bug fixes and updates, some of which include the following:

- enabled **Rails 6.1** default in `application.rb` - [#2966](https://github.com/rubygems/rubygems.org/pull/2966)
- disabled `mfa_required_since` usage - [#2965](https://github.com/rubygems/rubygems.org/pull/2965)
- fixed exploded elasticsearch import - [#2963](https://github.com/rubygems/rubygems.org/pull/2963)
- fixed Rubocop warning by re-enabling Ruby and excluding some files - [#2955](https://github.com/rubygems/rubygems.org/pull/2955)

In February, Rubygems.org gained [58 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2022-02-01%7D...master@%7B2022-02-31%7D), contributed by 6 authors. There were 350 additions and 208 deletions across 28 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
