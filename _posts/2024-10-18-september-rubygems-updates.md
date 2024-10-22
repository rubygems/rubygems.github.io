---
title: September 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in September.

## RubyGems News

In September, we released RubyGems [3.5.19](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3519--2024-09-18) and [3.5.20](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#3520--2024-09-24) along with Bundler [2.5.19](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2519-september-18-2024) and [2.5.20](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#2520-september-24-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems. Notable improvements include the [removal of temporary `.lock` files](https://github.com/rubygems/rubygems/pull/7939) unintentionally left behind by the gem installer, the rejection of [unknown platforms when running `bundle lock --add-platform`](https://github.com/rubygems/rubygems/pull/7967), and a performance fix that addresses the excessive [slowness of the `gem install <nonexistent gem>` command](https://github.com/rubygems/rubygems/pull/8006).

Some other important accomplishments from the team this month include:

[**Significant Progress on Lockfile Checksums Enablement**](https://github.com/rubygems/rubygems/pull/8029)

- [Previously](https://github.com/rubygems/rubygems/pull/7896), we implemented checksums in the lockfile to ensure that installed gems have not been tampered with, aligning with standard security measures in other package managers. We are now addressing platform-related issues to enforce strict gem locking and prevent false security assurances.
- The checksums feature is now available in our master branch and is being prepared for inclusion in Bundler 2.6’s December release, allowing users to opt in. It will become the default in Bundler 3, supported by continuous integration testing to guarantee reliability.

[**Fixing Strict Permissions Check in Bundler for GitHub Actions**](https://github.com/rubygems/rubygems/pull/7985)

- We resolved permission issues reported in GitHub Actions workflows where Bundler was refusing to delete directories before reinstalling gems, causing workflows to abort. This problem affected both GitHub Actions runner's repositories and the official `ruby/setup-ruby` action, forcing users to manually adjust permissions as a workaround.
- Through investigative efforts, we identified that the Bundler 2.5.12 release began treating default gems as regular gems and explicitly installing them. Since default gems include empty directories in Ruby distributions, Bundler was failing when attempting to remove these empty directories before installation.
- We fixed the issue by modifying Bundler to skip removing empty directories, ensuring smooth gem installations without requiring manual permission adjustments.

[**Enhancing Support for Caching Git Gems in**](https://github.com/rubygems/rubygems/pull/8013) [**Cache Specific Project (vendor/cache) Settles**](https://github.com/rubygems/rubygems/pull/8047)

- We have improved Bundler's ability to cache git gems in the `vendor/cache` by maintaining a bare clone of the repository within the cache. This enhancement allows users to bundle all dependencies with their applications, facilitating installations in environments without internet access.
- Additionally, we implemented patches to reduce the size of bare clones by removing `.sample` files and ensuring that empty directories are preserved when cloning repositories on different machines. These improvements prevent cache misidentification and enhance the reliability of git gem caching.

[**Improvements in Gem Activation Conflict Prevention**](https://github.com/rubygems/rubygems/pull/7960)

- As a dependency manager, Bundler needs to be very careful about having dependencies itself, because those dependencies could interfere with the dependencies of end users. We addressed dependency conflicts by carefully managing Bundler and RubyGem's own dependencies, particularly with the gemification of Ruby's standard library, such as `securerandom` becoming a default gem.
- To prevent conflicts, we vendored the `securerandom` gem under our own namespace in both RubyGems and Bundler, ensuring our dependencies do not interfere with user dependencies and maintaining a stable environment for end users.
- In the particular case of `bundler/inline,` we applied a workaround: rescue the conflict when it happens and retry with an explicit dependency on the user version, so that conflict does not happen the second time.
- We also explored more general solutions to provide robust fixes for common entry points prone to dependency conflicts, such as re-executing the original process after gem installation during `bundler/inline` or installing gems in a subprocess when `auto_install` is set.

 [**Improving Suggestions for**](https://github.com/rubygems/rubygems/pull/8083) [**and Speeding Up**](https://github.com/rubygems/rubygems/pull/8084)  [`gem install <nonexistent gem>`](https://github.com/rubygems/rubygems/pull/8083)**

- Previously, attempting to install a nonexistent gem (e.g., railss) resulted in Bundler suggesting multiple gem names that were over 20 characters long, while the correct gem (rails) was never suggested.
- We recognized that waiting 10 seconds for suggestions when installing a nonexistent gem was more annoying than helpful. By determining that computing the Levenshtein distance was the main performance penalty, we refactored Bundler to avoid computing this distance in as many cases as possible. This significantly speeds up the gem install command for nonexistent gems, enhancing the overall user experience.

**Introduced the New Design for RubyGems.org**

- We are slowly rolling out a full refresh of the site that aims to meet our goals of modernizing the design and improving the usability of [RubyGems.org](http://rubygems.org/) for all of our users.
- The new design aims to support the full range of devices/browser widths and (much to my relief) includes a dark mode theme!
- [Learn more here](https://blog.rubygems.org/2024/10/15/our-new-design.html)

![RubyGems.org "About" page, top navigation menu, featuring new design.
](https://rubycentral.org/content/images/size/w1600/2024/10/hammy-light-top-1-1-1.png)

RubyGems.org "About" page, top navigation menu, featuring new design.

![RubyGems New Design Dark Mode](https://rubycentral.org/content/images/size/w1600/2024/10/hammy-dark-bottom-1-1-1.png)

RubyGems.org "About" page, bottom navigation menu, featuring new design...in dark mode!

In September, RubyGems gained [168 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-9-01%7D...master@%7B2024-9-31%7D) contributed by 17 authors. They were 1,852 additions and 802 deletions across 164 files.

## [RubyGems.org](http://rubygems.org/) News

The updates made this month to [RubyGems.org](http://rubygems.org/) reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. Sponsored hosting for [RubyGems.org](http://rubygems.org/) in September was provided by [AWS](https://aws.amazon.com/), [Fastly](https://www.fastly.com), and [DataDog](https://www.datadoghq.com).

The following are highlights of what the team worked on this month:

[**Added Length Validations for User-Supplied String Attributes**](https://github.com/rubygems/rubygems.org/pull/5056)

- We added length validations for user-supplied string attributes to prevent users from adding a large amount of unexpected data to the pages we render.
- This improvement helps maintain application performance and security by ensuring that input data remains within acceptable limits.

[**Disabled Honeybadger & Datadog in local environments**](https://github.com/rubygems/rubygems.org/pull/5035)

- We disabled Honeybadger and Datadog from being initialized in local environments to prevent errors and unnecessary resource usage.
- These monitoring tools are configured and authenticated for production environments only, while local development setups do not have the necessary configurations. This fix ensures that Honeybadger and Datadog are active exclusively in production, maintaining a smooth and error-free experience for developers working in local environments.

In September, [RubyGems.org](http://rubygems.org/) gained [92 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-9-01%7D...master@%7B2024-9-31%7D) contributed by 8 authors. There were 1,643 additions and 1,644 deletions across 157 files.

## Ruby Ecosystem News

Here we outline additional exciting updates made to other projects in the Ruby Ecosystem.

### Ruby Toolbox

These are highlights from the work done in [Ruby Toolbox](https://www.ruby-toolbox.com/):

- To keep the Ruby Toolbox application orderly and running smoothly, we updated numerous dependencies on both the Ruby Toolbox Rails main application and the catalog repository, including upgrading to the latest `Ruby 3.3.5` and `Rails 7.2.1`.
- We reviewed and merged the most recent contributions to the catalog, ensuring that submissions are up-to-date and meet quality standards.

### Organization Accounts Update

We are making steady progress and remain on track to have the new feature ready for users by the end of November. [For details, check out this post.](https://github.com/rubycentral/alpha-omega/blob/update-2024-09/alpha/engagements/2024/RubyCentral/update-2024-09.md) Development work on this project was made possible by funding from [Alpha-Omega](https://rubycentral.org/news/ruby-central-receives-alpha-omega-grant/).


## Thank you

Thank you to all the contributors of RubyGems and [RubyGems.org](http://rubygems.org/) for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@byroot](https://github.com/byroot) Jean Boussier
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@simi](https://github.com/simi) Josef Šimánek
- [@marcoroth](https://github.com/marcoroth) Marco Roth
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@composerinteralia](https://github.com/composerinteralia) Daniel Colson
- [@djberube](https://github.com/djberube) David J Berube
- [@jeromedalbert](https://github.com/jeromedalbert) Jerome Dalbert
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@earlopain](https://github.com/earlopain) Earlopain
- [@y-yagi](https://github.com/y-yagi) Yuuji Yaginuma
- [@jonathanhefner](https://github.com/jonathanhefner) Jonathan Hefner
- [@tnir](https://github.com/tnir) Takuya N

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@JuanVqz](https://github.com/JuanVqz) Juan Vásquez

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
