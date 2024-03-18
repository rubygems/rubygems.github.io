---
title: February 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in February.

## RubyGems News

This month, RubyGems releaded RubyGems [3.5.6](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#356--2024-02-06) and Bundler [2.5.6](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#256-february-6-2024). These updates include enhancements such as [deep copy requirements in `Gem::Specification` and `Gem::Requirement` specifications](https://github.com/rubygems/rubygems/pull/7439), and [improvements to the gem login scope](https://github.com/rubygems/rubygems/pull/7342). These efforts are part of our ongoing commitment to improving the RubyGems development experience.


Some other important accomplishment from the team this month include:

- **[Merged a new `gem rebuild` command](https://github.com/rubygems/rubygems/pull/4913)**: The goal of this feature was to help create a simplified version of gem rebuild command as a standalone tool, so reproducible builds are available for existing RubyGems versions - (since the RubyGems versions had to match a build to be reproduced properly). This process involved setting up reproducible gem builds as a default, and included the `Gem.source_date_epoch` value into the metadata of built gems. The groundwork for this command involved a preliminary rebuild script to assess reproducibility requirements. Special thanks to [@duckinator](https://github.com/duckinator) for their significant contributions in developing this feature.
 
In February, RubyGems gained [97 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-2-01%7D...master@%7B2024-2-31%7D) contributed by 16 authors. There were 691 additions and 329 deletions across 120 files.


## RubyGems.org News

February’s updates to RubyGems.org reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform.

The following are highlights of what the team worked on this month:

- Converted Rubygems.org to Importmap + Stimulus Controllers:  Adding stimulus controllers will enable a modern, faster and simpler development experience for developers and it'll also bring us all the way to the most modern Rails default. We introduced `importmaps` on RubyGems.org last month to set us up for adding stimulus controllers. This entailed first creating a foundation for import map changes - the first stage of which was a migration to `propshaft`, allowing us to avoid Node entirely for our assets and still use and update npm packages for JS. The second stage was creating a separate pull request for the import map changes.  We’ve now begun implementing changes, adding an API key stimulus controller and improving it for ease of developer use. If you’re curious about Stimulus.js best practices, more information can be found here and here.

- Improving the Design of RubyGems Gems page: The [gem page](https://rubygems.org/gems) on RubyGems ranks as the most visited page of the website, serving as a key resource for engineers to understand essential details about a gem, including its purpose, licenses, dependencies, and how to access and install the gem itself. Recognizing the importance of these pages in helping visiting engineers accomplish their tasks, it's crucial to closely examine their needs and ensure that the page structure and design align with their objectives. Through interviews and discussions with RubyGems power users and stakeholders, we have been able to identify the fundamental values of the interface elements, understand the reasons behind their development, track their evolution, and determine the most beneficial next steps for our broader user base. Moving forward, we are exploring new design options to enhance user experience on these pages.

- [Initiating the Gem Research Tool Project](https://blog.segiddins.me/2024/02/09/residency-update/): This will be useful for RubyGems developers. The team will be able to use this as a playground for features that we want to expose to the public eventually, like browsing gem contents and being able to make queries. We also have been able to use this for security research to assess the impact of particular changes across the entire published gem ecosystem. The creation of this tool will involve lots of investigation, experimentation and steps like renting a dedicated server from Hetzner to host the gem research tool, after repeatedly running out of disk space! 

- Developing a Pure Ruby Sigstore Implementation: This project kicked off with a long-term goal of integrating it directly into RubyGems. The team is drawing inspiration from the existing sigstore and The Update Framework (TUF) implementations in Python. We intend to focus on meeting the sigstore compliance specifications through continuous iterations. Additionally, by analyzing code and branch coverage, we're identifying sections that need more extensive testing. A critical part of this project is creating a `protobuf` implementation that does not depend on native extensions, ensuring it can be seamlessly incorporated into RubyGems.

In February, RubyGems.org gained [86 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-2-01%7D...master@%7B2024-2-31%7D) contributed by 13 authors. There were 5,265 additions and 2,022 deletions across 270 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@VitaliySerov](https://github.com/VitaliySerov) Vitaliy Serov
- [@flavorjones](https://github.com/flavorjones) Mike Dalessio
- [@jgarber623](https://github.com/jgarber623) Jason Garber
- [@kimesf](https://github.com/kimesf) Kim Emmanuel
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@ccutrer](https://github.com/ccutrer) Cody Cutrer
- [@simi](https://github.com/simi) Josef Šimánek
- [@mame](https://github.com/mame) Yusuke Endoh
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@dduugg](https://github.com/dduugg) Douglas Eichelberger
- [@indirect](https://github.com/indirect) André Arko


### Contributors to RubyGems.org:

- [@jenshenny](https://github.com/jenshenny) Jenny Shen
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@simi](https://github.com/simi) Josef Šimánek
- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@sh0n0](https://github.com/sh0n0) sh0n0
- [@coorasse](https://github.com/coorasse) Alessandro Rodi
- [@CuddlyBunion341](https://github.com/CuddlyBunion341) Daniel Bengl
- [@albertchae](https://github.com/albertchae) Albert Chae
- [@bradly](https://github.com/bradly) Bradly Feeley
- [@ekyburz](https://github.com/ekyburz) EtienneKyburz
- [@indirect](https://github.com/indirect) André Arko

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.