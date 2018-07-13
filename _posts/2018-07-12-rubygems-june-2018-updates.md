---
title: June 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
author_email: stephaniemorillo@riseup.net
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in March.

## RubyGems.org News

In June, we updated over 25 dependencies, including nokogiri and the sprockets security release, and updated to Rails 5.1. We also fixed a longstanding and frustrating issue where multiple CI builds pushing a new gem version at the same time could result in a checksum error when trying to install the new version. On June 27, we deprecated the “gem edit” page and it will be removed altogether on July 10.

Instead of editing gem metadata at rubygems.org, we recommend using the gem specification itself. Use `Gem::Specification#metadata` to setting links to a gem’s homepage, changelog, documentation, and other websites. This will help us reduce the complexity of rubygems.org by making `Gem::Specification#metadata` the single source of truth and it will also allow gem owners to set different URLs by version.

This month, rubygems.org saw 28 commits making 159 additions and 74 deletions across 29 files.

## RubyGems News

RubyGems saw a lot of activity this month, with 29 merged pull requests. Changes included some support for the upcoming Ruby 2.7, test improvements, a fix for a leaking tempfile, better support for frozen string literals, and better support for case-insensitive file systems. We also added more deprecations for the upcoming 3.0 release, improved the way RubyGems interacts with Bundler 1.16.2 and the upcoming 2.0, and fixed some edge cases with stub gem specifications. We shipped most those changes by releasing RubyGems 2.7.7 on June 8.

After releasing 2.7.7, we merged several fixes for installing gems directly from an AWS S3 bucket source, improved some warning messages, and fixed issues activating gems when the same gem is installed for more than one platform at once.

In total, RubyGems gained 67 new commits, contributed by 12 authors. There were 439 additions and 62 deletions across 24 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementations, writing and/or updating documentation, and bug triage.
