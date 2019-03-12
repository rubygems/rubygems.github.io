---
title: January and February 2019 RubyGems Updates
layout: post
author: Stephanie Morillo
---


Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January and February.

## rubygems.org news

In last two months, we updated our search API to use Elasticsearch, which resolves multiple issues including [missing search results](https://github.com/rubygems/rubygems.org/issues/972) and [slow performance](https://github.com/rubygems/rubygems.org/issues/1256). Thanks to @lucianosousa, we are now using Rails 5.2.2. We would also like to let you know that we sprinkled some styling to our email templates and now they are no longer being marked as spam by some email providers. We haven't received any new help ticket for email being lost in last month—a good sign!

In mid February, we had to impose rate limit of one yank request per 10 min because we were seeing some users yank hundreds of gems at once. Our yank API endpoint was extremely slow, and hundreds of yanks at once was causing site instability. Since then we have worked hard on some optimizations and we are happy to report that we have brought down the average response time of Yank API from 4000 ms to 250 ms.

In January and February, Rubygems.org gained 67 new commits, contributed by 8 authors. There were 1,177 additions and 509 deletions across 81 files.

## rubygems news

RubyGems saw a bunch of commits cleaning up code, fixing bugs, and generally making things work better.

We also did additional work in the background, working with security researchers to fix problems that they had discovered. You can read more about [the security issues, fixes, and the latest release with fixes on the RubyGems blog](https://blog.rubygems.org/2019/03/05/security-advisories-2019-03.html).

In January and February, RubyGems gained 153 new commits, contributed by 12 authors. There were 1,776 additions and 807 deletions across 176 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.rdoc#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and/or updating documentation, and bug triage.
