---
title: August 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in August.

## rubygems.org news

In August, we blacklisted several gems with names that were close to other popular gems, in response to CVE-2018-3779. We're starting to investigate ways to protect RubyGems.org from malicious gems—if you're interested in helping work on that, let us know! We also reviewed and merged performance improvements to the “rubygems#show” and “version#index” pages, contributed by [@nateberkopec](https://github.com/nateberkopec).

In total, RubyGems.org gained 11 commits from 5 authors, making 44 additions and 35 deletions across 8 files.

## rubygems news

In RubyGems, we fixed some bugs, including the ability to [auto re-sign expired certs](https://github.com/rubygems/rubygems/pull/2380), fixed some tests, and made sure that gems with `allowed_push_host` set will be pushed to the correct host by `gem push`. 

In total there were 19 new commits, contributed by 5 authors, with 112 additions and 26 deletions across 13 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
