---
title: April 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in April.

## RubyGems News

In April, we released RubyGems [3.5.8](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#358--2024-04-11) and [3.5.9](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#359--2024-04-12), and Bundler [2.5.8](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#258-april-11-2024) and [2.5.9](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#259-april-12-2024). These releases bring a series of enhancements and bug fixes designed to improve the overall developer experience with RubyGems, including: a security improvement that adheres to [global `umask` settings when writing files](https://github.com/rubygems/rubygems/pull/7518), a fix for the [`NoMethodError` crash linked to issues with corrupt package files](https://github.com/rubygems/rubygems/pull/7539), and a resolution for an error message problem in the resolver [when it runs out of versions due to the use of `--strict --patch` filters](https://github.com/rubygems/rubygems/pull/7527).

Some other important accomplishments from the team this month include:

**[Making Avoiding Writing Credentials to Lockfiles the Default](https://github.com/rubygems/rubygems/pull/7560)**
- In an effort to enhance security and prevent users from accidentally sharing credentials publicly, we recommend that you do not embed credentials in lockfiles. 
- This practice was already uncommon, except in instances where users included credentials directly in their Gemfile—a method we do not recommend. Instead, it's advisable to utilize settings.  
- Despite some users opting to use an ENV variable, we consistently ensure that credentials are not stored in the lockfile but are sourced either from the configuration or directly from the Gemfile.

**[Making `bundle update specific_gems` Smarter](https://github.com/rubygems/rubygems/pull/7558)** 
- For years, reports have indicated that `bundle update gem` does not consistently update the gem to its latest available version. Users find that if they delete their lockfile, specify the desired version in the Gemfile, or run `bundle install`, the gem updates as expected. Ideally, such steps shouldn't be necessary for updating a gem—`bundle update gem` should suffice. 
- This is also why dependency bots like Dependabot sometimes fail to create PRs to address security alerts.  The challenge is that upgrading one gem may require upgrading others to prevent version conflicts. `bundle update gem` currently lacks the capability to handle this complexity. 
- To address this, I implemented a fix where a full `bundle update` is first executed to determine the latest resolvable versions, followed by a targeted update that forces these versions, allowing the resolver to manage any conflicts by unlocking conflicting dependencies.
    
**[Resolving Musl Platform Issues for RubyGems and Bundler](https://github.com/rubygems/rubygems/pull/7583)**
-  Since introducing support for the musl platform, there's been different issues and regressions with it, leading to hesitancy among gem authors about releasing musl variants. The maintainer of Nokogiri has been actively identifying these issues, including a critical problem he believes to be the last barrier to fully supporting musl precompiled gems. Addressing this issue seemed necessary. 
-  The non-transitivity of `Gem::Platform#===` with musl was causing missing platforms in the lockfile, leading to resolution errors. The issue has been resolved by specifically accommodating the unique aspects of musl when removing invalid platforms from the lockfile.

In April, RubyGems gained [106 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-4-01%7D...master@%7B2024-4-31%7D) contributed by 13 authors. There were 1,175 additions and 797 deletions across 106 files.


## RubyGems.org News

The updates made this month to RubyGems.org reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform.

The following are highlights of what the team worked on this month:

**[Re-introducing Avatars to RubyGems.org](https://github.com/rubygems/rubygems.org/pull/4599)** 
- Originally, profile images were removed from RubyGems.org due to privacy concerns, as Gravatar's system exposed user emails, leading to complaints. This change, however, made the site appear anonymous, diminishing the perceived trustworthiness of gem info pages. 
- To address this issue, [@segiddins](https://github.com/segiddins) has developed a solution that allows images to be safely displayed without compromising privacy. This new method proxies images through RubyGems.org, maintaining user privacy while enhancing the visual appeal and trust of the platform.

**[Adding RubyGems Yank Limits](https://github.com/rubygems/rubygems.org/pull/4631)**
- To reduce the likelihood of disruption caused by a left-pad-like package removal, we've introduced limits on deleting old or highly downloaded gems.
- Gem deletions are now primarily for immediate fixes of newly released but broken gems, where reverting is the best solution. For other issues, the recommended approach is to release a new version. 
- We've set a provisional limit on gems that can be yanked without a public review to avoid premature exposure. This policy affects gems with over 100,000 downloads or those older than 30 days, aligning more closely with other ecosystems that restrict deletions. 
- We will adjust the policy based on feedback and continue to coordinate yank requests through RubyGems staff, balancing the needs of maintainers and the wider community.

**[An Upgraded Search System from OpenSearch v1 to v2](https://github.com/rubygems/rubygems.org/pull/4613)** 
- The upgrade from OpenSearch v1 to v2 allows us to benefit from new updates, features, and enhancements. 
- Additionally, the introduction of High Availability ensures that our search functionality will remain operational even if an AWS Availability Zone(Data Center) goes offline, providing a robust and resilient service.

In April, RubyGems.org gained [82 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-4-01%7D...master@%7B2024-4-31%7D) contributed by 10 authors. There were 1,111 additions and 761 deletions across 150 files.


## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@andyw8](https://github.com/andyw8) Andy Waite
- [@ccutrer](https://github.com/ccutrer) Cody Cutrer
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@fatkodima](https://github.com/fatkodima) Fatkodima
- [@flavorjones](https://github.com/flavorjones) Mike Dalessio
- [@fryguy](https://github.com/Fryguy) Jason Frey
- [@gdubicki](https://github.com/gdubicki) Greg Dubicki
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@indirect](https://github.com/indirect) André Arko
- [@ilyazub](https://github.com/ilyazub) ilyazub
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@mensfeld](https://github.com/mensfeld) Maciej Mensfeld
- [@ngan](https://github.com/ngan) Ngan Pham
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada 
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@technicalpickles](https://github.com/technicalpickles) Josh Nichols
- [@thedavemarshall](https://github.com/thedavemarshall) Dave Marshall

### Contributors to RubyGems.org:

- [@ahangarha](https://github.com/ahangarha) Mostafa Ahangarha
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@dancristianb](https://github.com/dancristianb) Dancristianb
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@indirect](https://github.com/indirect) André Arko
- [@javier-menendez](https://github.com/javier-menendez) Javier Menéndez Rizo
- [@markets](https://github.com/markets) Marc Anguera
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek

*If we missed you, please let us know so we can include you in our shout out!*
 
---
Learn more about contributing to RubyGems by visiting the [RubyGems Contributing Guide](https://github.com/rubygems/rubygems/blob/master/CONTRIBUTING.md). We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
