---
title: September 2021 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to [RubyGems](https://github.com/rubygems/rubygems) and [RubyGems.org](https://github.com/rubygems/rubygems.org) in September.
## RubyGems News

This month in RubyGems, we saw some updates and fixes on the RubyGems and Bundler projects. Some of those changes include the following:

- released a new version for RubyGems [`3.2.27`](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3227--2021-09-03), which included: 
    - fixing an issue when installing some gems from GitHub private gem servers
    - setting some unredacted credentials in verbose mode 
    - improving loading the library by using `require_relative` for internal requires. 
- released version `3.2.28` for RubyGems, which included: 
    - fixing a regression introduced by the redaction fix in `3.2.27`, which adds support for the MINGW-UCRT platform 
    - making sure not to load the Uri gem unnecessarily
    - relaxing gem spec validations to allow descriptions that include the "TODO" string. 
-  made progress on a gem rebuild command that will allow exactly reproducing existing package builds (still unreleased).
- released Bundler version [`2.2.27`](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2227-september-3-2021), which fixed a couple of bundle check regressions, as well as issues with plugins and syntax errors on the generated Github Actions configuration in new gems. It also optimizes some requires and adds support for redacting credentials using the `x-oauth-basic` form. 
- released Bundler version [`2.2.28`](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2228-september-22-2021), which made sure `bundle remove` automatically regenerates the lock file --- deprecating the `--install` flag --- and also updates the gemspec generated on new gems to use example.com as the sample gem server (instead of the potentially malicious mygemserver.com). 
-   made progress on the Bundler version locking RFC implementation (still to be released).

In September, Rubygems gained [36 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2021-09-01%7D...master@%7B2021-09-30%7D), contributed by 10 authors. There were 154 additions and 21 deletions across 24 files.
## RubyGems.org News

In September, RubyGems.org saw several bug fixes and updates, some of which include the following:

- investigated increased traffic and deployed a fix for tarpitting abusive clients.
- [updated Capybara](https://github.com/rubygems/rubygems.org/pull/2769), [`faraday_middleware-aws-sigv4`](https://github.com/rubygems/rubygems.org/pull/2794), and [`aws-sdk` dependencies](https://github.com/rubygems/rubygems.org/pull/2344) in preparation for the Ruby 3 update.
- fixed versions and v1/deps fastly cache not being purged on gem push - [#2793](https://github.com/rubygems/rubygems.org/pull/2793).
- updated the ownerships call PR to fix styling and add authorization - [#2748](https://github.com/rubygems/rubygems.org/pull/2748).
- thanks to [@matiaskorhonen](https://github.com/matiaskorhonen), we are now storing the certificate chain used to sign the published versions - [#2444](https://github.com/rubygems/rubygems.org/pull/2444).

This month, Rubygems.org gained [75  new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2021-09-01%7D...master@%7B2021-09-30%7D), contributed by 7 authors. There were 579 additions and 112 deletions across 53 files.

## Related News

Here we outline additional exciting updates made to other projects in the Ruby Ecosystem.
### Ruby Toolbox

In September, we added the ability to browse a project's reverse dependencies (the list of gems that declare that project as a dependency) based on the Rubygem dependency data added to the Ruby Toolbox earlier this year. Read more about the latest from Ruby Toolbox in the upcoming monthly update. You can sign up to [receive updates every month as soon as they are released](https://www.getdrip.com/forms/6239290/submissions/new).

As always, we continue to fix bugs, review and merge PR's and reply to support tickets.

---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
