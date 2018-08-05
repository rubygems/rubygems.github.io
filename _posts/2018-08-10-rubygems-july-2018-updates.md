---
title: July 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in July.

## rubygems.org news

In July, we updated 15 dependencies in RubyGems.org, and we released the alpha version of [two-factor authentication](https://github.com/rubygems/rubygems.org/pull/1729) for logging into the website. If you’d like to try it now, enable it by running `document.cookie='mfa_feature=true;path=/'` in your browser console. We’re working on adding support for multiple factors to the CLI as well, and you should see more updates on it next month. We also fixed a few small bugs around the dashboard and Atom feeds for users who are logged out.

This month, RubyGems.org gained 38 commits from 4 authors, making 1,124 additions and 183 deletions across 84 files.

## rubygems news

RubyGems saw better symlink handling, some improved warning messages, and better testing on windows. We also made the flags for the `pristine` and `cleanup` commands more consistent with the existing `install` command, and did some code cleanup. Finally, we imported some fixes from ruby-core to make sure RubyGems continues to work when OpenSSL is not available in Ruby.

This month, RubyGems gained 70 new commits, contributed by 9 authors. There were 429 additions and 186 deletions across 41 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.