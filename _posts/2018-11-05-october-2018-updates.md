---
title: October 2018 RubyGems Updates
layout: post
author: Stephanie Morillo
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in October.

## rubygems.org news

In October, we updated 23 dependencies, including the update to Rails 5.2 (thanks [@thomasdziedzic](https://github.com/thomasdziedzic)) and a security update to loofah. Thanks to [@fwilkens](https://github.com/fwilkens), we added a new endpoint to our API which can be used to [query for gem updates within a given time range](https://guides.rubygems.org/rubygems-org-api/#get---apiv1timeframe_versionsjson). We also merged improvements to the French and Chinese translations of our site.

Early in October, we had to disable the endpoint that powers the reverse dependencies list on the website, because it was interfering with the stability of the rest of the site. We sincerely apologize for any inconvenience. We’ve since done significant work to improve that endpoint’s performance, and it is back online. Unfortunately, this meant, we had to say goodbye to one of our beloved libraries, will\_paginate, which we [replaced with kaminari](https://github.com/rubygems/rubygems.org/pull/1807).

We also undertook some refactoring work to improve our Code Climate score and we are happy to report that our maintainability score is an A!

This month, RubyGems.org gained 55 commits from 7 authors, making changes to 72 files with 342 insertions and 1226 deletions.

## rubygems news

RubyGems changes this month included removing insecure DNS lookups on gem servers (thanks [@arlandism](https://github.com/arlandism)!), fixed an issue where RubyGems might load files from a different copy of RubyGems on disk (thanks [@deivid-rodriguez](https://github.com/deivid-rodriguez)), and did ongoing administration and maintenance. We also merged in changes from ruby-core, improving compatibility with the upcoming Ruby 2.6.

This month, RubyGems gained 49 new commits, contributed by 11 authors. There were 747 additions and 604 deletions across 73 files.

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
