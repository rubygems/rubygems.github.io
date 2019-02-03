---
title: December 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## rubygems.org news

In RubyGems.org news, lead RubyGems.org maintainer [@dwradcliffe](https://github.com/dwradcliffe) completed porting the production RubyGems.org deployment to use Kubernetes! This didn’t cause any user-facing changes, but makes it easier for others to develop locally, and will help us with our efforts to avoid downtime.

Another major development was [enabling two factor authentication](https://guides.rubygems.org/setting-up-multifactor-authentication/), a Google Summer of Code project that can greatly improve the security of logging in and publishing new gems, for any gem authors who enable it. (Special thanks to (@ecnelises)[https://github.com/ecnelises] for their work on this!)

In addition to those major developments, we continued to fix bugs, improve translations, and generally keep things humming along.

This month, RubyGems.org gained 57 new commits, contributed by 11 authors. There were 1,362 additions and 1,259 deletions across 111 files.

## rubygems news

December for RubyGems was also a big milestone: we shipped RubyGems 3.0.0! The biggest changes were S3 sources, multi-threaded gem downloads, support for two-factor authentication, and including Bundler 1.17.2.

In addition to those big changes, we continued to clean up unused code, improve warning and error messages, and fix bugs.

This month, RubyGems gained 149 new commits, contributed by 15 authors. There were 1,699 additions and 1,509 deletions across 270 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
