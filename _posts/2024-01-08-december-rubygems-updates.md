---
title: December 2023 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in December.

## RubyGems News

This month in RubyGems, we released the following version of RubyGems [3.5.0](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#350--2023-12-15), [3.5.1](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#351--2023-12-15), [3.5.2](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#352--2023-12-21), [3.5.3](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#353--2023-12-22) and Bundler [2.5.0](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#250-december-15-2023), [2.5.1](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#251-december-15-2023), [2.5.2](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#252-december-21-2023), [2.5.3](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#253-december-22-2023). These updates mark significant milestones in our continuous effort to enhance the Rubygems development experience.

A major enhancement was made to the `generate_index command`. It now has the capability to create compact index files. This feature has been integrated into the externally available `rubygems-generate_index` gem ([#7085](https://github.com/rubygems/rubygems/pull/7085)). This advancement not only improves efficiency but also extends the command's utility.

The `gem install` command also saw an important update. To better accommodate environments where permissions might be restricted, it now automatically uses the user’s installation directory when the default `gem home` is not writable ([#5327](https://github.com/rubygems/rubygems/pull/5327)).

Additionally, [Bundler](https://bundler.io) introduced the `bundle config set version` feature. This allows users to explicitly select the Bundler version they wish to use, adding a layer of customization. It also provides the option to override the lockfile version by setting it to `system` ([#6817](https://github.com/rubygems/rubygems/pull/6817)).

Some other improvements that landed into our repo this month that are NOT included in the above releases are:

- The documentation process has been upgraded, now utilizing  [nronn](https://github.com/n-ronn/nronn) for generation ([#7227](https://github.com/rubygems/rubygems/pull/7227)).
- Used `Minitest::TestTask` in a template file for minitest streamlining the testing process.([#7234](https://github.com/rubygems/rubygems/pull/7234)).
- Avoid some allocations when evaluating ruby Gemfile DSL ([#7251](https://github.com/rubygems/rubygems/pull/7251)).
- Improved install advice when some gems are not found ([#7265](https://github.com/rubygems/rubygems/pull/7265)).
- A fix was implemented for the `bundler test` on the Ruby package ([#7298](https://github.com/rubygems/rubygems/pull/7298)).

In December, RubyGems gained [280 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2023-12-01%7D...master@%7B2023-12-31%7D) contributed by 17 authors. There were 28,544 additions and 8,338 deletions across 761 files.

## RubyGems.org News

Ths month's updates to RubyGems.org reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. 

A significant upgrade made was the complete transition to Ruby 3.3, [[#4320](https://github.com/rubygems/rubygems.org/pull/4320)]. This update represents a major step in keeping the platform current with the latest Ruby advancements.

We also added improvements to the [trusted publishing](https://blog.rubygems.org/2023/12/14/trusted-publishing.html) feature. Notably, the pending publisher link is now visible to everyone in the settings edit section ([#4290](https://github.com/rubygems/rubygems.org/pull/4290)). Additionally, we added integration of passkeys as a single factor of authentication, this marks a significant improvement in security of the platform ([#4271](https://github.com/rubygems/rubygems.org/pull/4271)).

Some other improvements that landed into our repo this month that are NOT included in the above releases are:

- implemented `Deletion#version_id` for better version association ([#4273](https://github.com/rubygems/rubygems.org/pull/4273)).
- resolved issues in creating Rubygem trusted publishers when GitHub actions exist ([#4282](https://github.com/rubygems/rubygems.org/pull/4282)).
- added `/profile/me` action that redirects logged-in users to their profile ([#4291](https://github.com/rubygems/rubygems.org/pull/4291)).
- updated to Bundler 2.5.1 with the addition of CHECKSUMS ([#4296](https://github.com/rubygems/rubygems.org/pull/4296)).
- added `ruby/setup-ruby` for switching RubyGems versions ([#4298](https://github.com/rubygems/rubygems.org/pull/4298)).

In December, RubyGems.org gained [55 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2023-12-01%7D...master@%7B2023-12-31%7D) contributed by 7 authors. There were 4,110 additions and 511 deletions across 140 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@nevinera](https://github.com/nevinera) Eric Mueller
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@franzliedke](https://github.com/franzliedke) Franz Liedke
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@junaruga](https://github.com/junaruga) Jun Aruga
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash
- [@simi](https://github.com/simi) Josef Šimánek
- [@y-yagi](https://github.com/y-yagi) y-yagi
- [@eregon](https://github.com/eregon) Benoit Daloze
- [@voxik](https://github.com/voxik) Vít Ondruch
- [@osyoyu](https://github.com/osyoyu) Daisuke Aritomo
- [@etherbob](https://github.com/etherbob) Andrew Stevenson
- [@AndrewSwerlick](https://github.com/AndrewSwerlick) Andrew Swerlick
- [@amomchilov](https://github.com/amomchilov) Alexander Momchilov
- [@hogelog](https://github.com/hogelog) hogelog 
- [@takmar](https://github.com/takmar) Takuma Yoshida


### Contributors to RubyGems.org:

- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@simi](https://github.com/simi) Josef Šimánek
- [@indirect](https://github.com/indirect) André Arko
- [@ntkme](https://github.com/ntkme) なつき
- [@martinemde](https://github.com/martinemde) Martin Emde

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.