---
title: May 2020 RubyGems Updates
layout: post
author: Gift Egwuenu
---

Welcome to the RubyGems monthly update! As part of our efforts at [Ruby Together](http://rubytogether.org/), we publish a recap of the work that we've done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in May.

## RubyGems News

This month, we refactored the spec suite to be faster and collated changes that will be shipped in the next bundler release. We fixed an [activation issue on old versions of Bundler](https://github.com/rubygems/rubygems/pull/3626). We've fixed several regressions in RubyGems custom `require` and made specific tests work when running from ruby-core (thanks [@deivid-rodriguez](https://github.com/deivid-rodriguez)). We revisited a bunch of old PRs and work from the old repo, and got it ready to merge into the new repo. 

In May, [Rubygems](https://github.com/rubygems/rubygems) gained [248 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-05-01%7D...master@%7B2020-05-31%7D), contributed by 19 authors. There were 2227 additions and 1857 deletions across 892 files.


## RubyGems.org News

In May, we worked on reviewing several fixes on [rubygems.org](https://www.rubygems.org) that, once deployed, will unblock the next bundler release. We've also done work on refining the upcoming release, handling some deprecation message issues, and a few problems with the integration with ruby-core. We investigated Honeybadger reports and created PRs to fix all of them. 
RubyGems.org saw several bug fixes and updates this month, some of which include the following: 

* ran rake task to delete extraneous dependencies locally and update tasks to update version info_checksum. 
* verified feasibility of using updated_at column to order versions for the generation of versions.list file.
* added original\_script\_name to kaminari params blacklist, which prevents XSS and unintended URL redirect.
* updated rack-attack tests and config to fix dependency update build.
* resolved tickets on [help.rubygems.org](https://help.rubygems.org)
* added rake task to update check of version with multi ruby/rubyGems. [rubygems/rubygems.org#2370](https://github.com/rubygems/rubygems.org/pull/2370)
* verified compact_index update and running rake task don't introduce new mismatches
* updated compact_index to remove whitespace change and released a new version.
* debug checksum mismatch due to incomplete SQL ordering and unresolved dependencies
* worked on PR to fix SQL ordering of dependencies in info and update correct\_info\_checksum rake task. [rubygems/rubygems.org#2374](https://github.com/rubygems/rubygems.org/pull/2374)
* fixed rack attack failing tests due to merge issues. rubygems/rubygems.org#2369 
* restarted work on moving [RubyGems.org](http://rubygems.org/) 's CI to Github Actions

We continue to attend to tickets, update dependencies, and review patches and PRs on RubyGems.org.

For this month, [Rubygems.org](https://github.com/rubygems/rubygems.org) gained [58 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-05-01%7D...master@%7B2020-05-31%7D), contributed by 8 authors. There were 646 additions and 102 deletions across 46 files.

---

Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md#how-to-contribute). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
