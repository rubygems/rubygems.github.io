---
title: November 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## rubygems.org news

In November, we updated 19 dependencies on RubyGems.org including security updates to rack and activejob. Thanks to a report that came in from HackerOne, we fixed a bug that would allow an attacker to guess an `api_key` by sending all of their guesses as an array along with the request. We also fixed some other issues reported through HackerOne, including rate limits on forgotten password requests, and profile pages being viewable after logout using the browser back button. We also removed the only use of IFrames (GitHub stars), and updated our CSP. Finally, we now have better Dutch translations thanks to [@sharkwouter](https://github.com/sharkwouter), a first time contributor to RubyGems.org.

This month, RubyGems.org gained 37 commits from 6 authors, making changes to 60 files with 1,796 insertions and 1,038 deletions.

## rubygems news

RubyGems saw a lot of cleanup and bugfixes this month. We also merged [@ecnelises](https://github.com/ecnelises)’s Google Summer of Code Project, which adds support for two-factor authentication to RubyGems.org. 2FA is a huge boost to account security, and once we have everything released and working, we’ll encourage everyone to turn it on. In total, RubyGems gained 125 new commits, contributed by 12 authors. There were 1,532 additions and 1,500 deletions across 268 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
