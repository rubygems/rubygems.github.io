---
title: January 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---
Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January.

## RubyGems News

In January, we released new versions of Bundler `v2.2.5`, `v2.2.6`, `v2.2.7`, and `v2.2.8`, and corresponding versions of RubyGems `v3.2.5`, `v3.2.6`, `v3.2.7`, and `v3.2.8`. The main improvements in these releases are **resolver correctness** and **better performance**. Learn more about specific changes made from the changelogs: [Bundler Changelog](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#228-february-2-2021) and [RubyGems Changelog](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#328--2021-02-02). We're refining our RFC for Bundler Version Locking -[#29](https://github.com/rubygems/rfcs/pull/29) and plan to move on to the implementation soon.

As usual, we're routinely triaging new issues and reviewing pull requests from contributors.

This month, [RubyGems](https://github.com/rubygems/rubygems) gained [172 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-01-02%7D...master@%7B2021-01-31%7D), contributed by 12 authors. There were 53323 additions and 1646 deletions across 2565 files.

## RubyGems.org News

This month on RubyGems.org, we reduced delay in update of versions endpoint after `gem push` from the worst-case of **3,660 seconds** to **60 seconds** - [#2612](https://github.com/rubygems/rubygems.org/pull/2612), [#2614](https://github.com/rubygems/rubygems.org/pull/2614), [#2616](https://github.com/rubygems/rubygems.org/pull/2616).

In addition to that, we made the following improvement and fixes:

- debugged delay in versions endpoint update on `gem push` and set surrogate key on versions to reduce Fastly cache expiry. - [#2612](https://github.com/rubygems/rubygems.org/pull/2612), [#2614](https://github.com/rubygems/rubygems.org/pull/2614)
- worked on pre-update changes for **Rails 6.1** and updated and deployed **Rails 6.1** update. -[#2607](https://github.com/rubygems/rubygems.org/pull/2607), [#2597](https://github.com/rubygems/rubygems.org/pull/2597), [#2598](https://github.com/rubygems/rubygems.org/pull/2598)
- created Fastly support tickets for dedicated IPs and incorrect status code on matching If-None-Match.
- worked on updating RubyGems-terraform root files to sync with current state.
- thanks to [@iMacTia](https://github.com/iMacTia), we added a new MFA level UI and `gem signin` - [#2601](https://github.com/rubygems/rubygems.org#2601) - find out more about this on [RubyGems Guides](https://guides.rubygems.org/setting-up-multifactor-authentication/#authentication-levels).

As always, we continue to fix bugs, review and merge PR’s and reply to support tickets.

In January, Rubygems.org gained [89 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-01-01%7D...master@%7B2021-01-31%7D), contributed by 8 authors. There were 651 additions and 377 deletions across 70 files.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
