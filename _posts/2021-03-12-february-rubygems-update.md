---
title: February 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in February.

## RubyGems News

This month on RubyGems, we worked on fixing an issue about source priority that received attention due to a [popular blog post](https://medium.com/@alex.birsan/dependency-confusion-4a5d60fec610). In particular, the lockfile now has separated RubyGems sources, limiting the issue to fresh installs without a lockfile and allowing for a workaround in the other cases (running `bundle lock` and reviewing the result before installing).

In February, [RubyGems](https://github.com/rubygems/rubygems) gained [114 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-02-01%7D...master@%7B2021-02-28%7D), contributed by 12 authors. There were 743 additions and 204 deletions across 56 files.

## RubyGems.org News

This month on RubyGems.org, we reduced the ngix rate limit to mitigate the load on Postgres - [#2634](https://github.com/rubygems/rubygems.org/pull/2634) and evaluated the impact of reducing `random_page_post` in Postgres config.

In addition to that, we made the following improvement and fixes:

- updated Elasticsearch to **v6.8**.
- setup notifications for AWS health events.
- updated script to block a user from resetting API keys - [#2647](https://github.com/rubygems/rubygems.org/pull/2647)
- reduced font size of title and subtitle on reverse dep page - [#2637](https://github.com/rubygems/rubygems.org/pull/2637)
- enabled safe-site lax cookie policy - [#2638](https://github.com/rubygems/rubygems.org/pull/2638) 
- enabled `return_only_media_type_on_content_type` rails 6.0 default - [#2639](https://github.com/rubygems/rubygems.org/pull/2639)
- thanks to [simi](https://github.com/simi), we significantly improved the delay in our build time by migrating from Travis to Github Actions. - [#2626](https://github.com/rubygems/rubygems.org/pull/2626).

In February, [RubyGems](https://github.com/rubygems/rubygems) gained [52 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-02-01%7D...master@%7B2021-02-28%7D), contributed by 3 authors. There were 249 additions and 168 deletions across 23 files.

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
