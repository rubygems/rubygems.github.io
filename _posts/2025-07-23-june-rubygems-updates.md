---
title: June 2025 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in June. 

# RubyGems News

In June, we introduced a new **Bundler 4 mode** for early feedback and continued work on the upcoming **Bundler 2.7.0** and **RubyGems 3.7.0** releases. These changes reflect our ongoing focus on flexibility, modernization, and improving developer workflows.

[**Bundler 4 mode is now available**](https://github.com/rubygems/rubygems/pull/8780)

- We’ve launched a user-facing simulation mode that lets you preview Bundler 4 behavior before its final release. This feature allows developers to test upcoming breaking changes, provide feedback, and participate in shaping the final version. You can now opt in by configuring:

```bash
bundle config simulate_version 4
```

![bundle simulate_version](https://res.cloudinary.com/lauragift/image/upload/v1753257129/image4_taci7s.png)

- Initially, we tried overriding the `Bundler::VERSION` constant, but this proved unreliable due to side effects like misrepresenting versions in lockfiles. After significant refactoring across specs and core logic, we isolated version-specific behaviors into the `Bundler::FeatureFlag` class.
- The result is a cleaner and more robust approach where Bundler behaves as if it's version 4, without changing the actual version.
- Why Bundler 4 and not 3? We’re matching version numbers between Bundler and RubyGems to simplify releases and reduce confusion.

**Upcoming Bundler 2.7.0 and RubyGems 3.7.0 releases:**

- This year we’re committed to releasing major versions of Bundler and RubyGems, and this is special. The last major Bundler release was `2.0.0` in 2019, but that version only dropped support for old versions of Ruby and delayed all breaking changes to a future major release. So effectively, the last “real” major Bundler release was `1.0.0` back in 2010! For RubyGems, the last major release was `3.0.0` in 2018.
- To make transitioning easier and get more community consensus with breaking changes, we will be releasing mid-year minor releases—including an easy way to try future Bundler 4 (see update above).

**Gems with prebuilt binaries**

- We [finished refactoring](https://github.com/rubygems/rubygems/pull/8703) `Gem::Platform` matching logic from Bundler into RubyGems. This work will enable sharing code for platform matching between Bundler & RubyGems in preparation for wheel support hitting both projects simultaneously.
- We have already used this refactor to [improve platform](https://github.com/rubygems/rubygems/pull/8751) selection in the RubyGems CLI, picking the best platform gem that matches the running platform.
- Our lead security engineer Samuel Giddins spent the majority of the month prototyping ways to encode the new platform information for wheels into existing platform strings in a backwards compatible way.
- As a part of this prototyping work, Samuel researched the translation of Python’s platform tags into the Ruby ecosystem. He found that RubyGems, unlike `CPython`, won’t need a separate ABI tag (the binary level contract between compiled code) from the Ruby tag, since Ruby implementations tend not to have stable ABIs.
- Expect a PR demonstrating wheels to hit in the coming month.

# RubyGems.org News

This month, [RubyGems.org](https://rubygems.org/) continued to scale and improve its services with the support of our infrastructure sponsors: [AWS](https://aws.amazon.com/?ref=rubycentral.org), [Fastly](https://www.fastly.com/?ref=rubycentral.org), and [Datadog](https://www.datadoghq.com/?ref=rubycentral.org).

June 2025 was another high-traffic month on RubyGems.org, serving over 4.08 billion gem downloads, a slight increase over May’s 4.06 billion. We served 221 million downloads on our busiest day this month. 

**Ruby usage stats**

- Ruby 3.4 adoption continues to climb steadily. In June, it accounted for 10.93% of all gem downloads — up from 9.3% in May — showing strong momentum just six months after release.
- Ruby 3.2 still leads with 33.84%, meanwhile, Ruby 3.1, which reached EOL in March, dropped further to 10.15%.
- Would you like to get more insight into [RubyGems.org](http://rubygems.org/) stats? Feel free to explore [RubyGems.org ClickHouse public dataset](https://clickhouse.com/blog/announcing-ruby-gem-analytics-powered-by-clickhouse).

The following are highlights of what the team worked on this month:

***PostgreSQL 14 upgrade***

- We have started updating [RubyGems.org](http://rubygems.org/) PostgreSQL, and are currently testing it in a staging environment. PostgreSQL is the main source of truth for [RubyGems.org](http://rubygems.org/) and the currently in use PostgreSQL 13 is slowly reaching EOL. We aim to upgrade to PostgreSQL 17 by the end of the summer.
- We will be using the approach explained in [pg major update](https://github.com/rubygems/pg-major-update/), which has been successfully used in previous upgrades, to achieve zero-downtime. A separate blog post with more details on the process is forthcoming.

## **RubyGems Ecosystem News**

This is where we highlight exciting updates made to Ruby infrastructure projects that support our RubyGems work.

**Experimental namespacing progress:**

- [A lot of activity](https://bugs.ruby-lang.org/projects/ruby-master/issues?fields%5B%5D=issue_tags&fields%5B%5D=status_id&operators%5Bissue_tags%5D=%3D&operators%5Bstatus_id%5D=o&set_filter=1&values%5Bissue_tags%5D%5B%5D=namespace&values%5Bstatus_id%5D%5B%5D=) continues around the experimental Namespace feature ([see May 2025 newsletter](https://blog.rubygems.org/2025/06/16/may-rubygems-updates.html#interesting-ruby-news)) as numerous bugs and refinements are being addressed. Quality-of-life improvements are also starting to land, like [`Namespace#eval`](https://bugs.ruby-lang.org/issues/21365), which simplifies testing and experimentation inside a given namespace.

**`Array#join (Enumerable#join_map)`proposal:**

- There’s growing momentum behind making joining transformed collections, a common Ruby pattern, more ergonomic. A [new proposal for Array#join with a block](https://bugs.ruby-lang.org/issues/21455) and the related [Enumerable#join_map](https://bugs.ruby-lang.org/issues/21386) aim to make expressions like: `users.map(&:name).join(", ")` more elegant and expressive, by writing: `users.join_map(", ", &:name)`.
- If accepted, this could be a small but meaningful step making Ruby simpler and more readable. If this improvement matters to you, consider sharing your thoughts on the [Ruby bug tracker for Array#join](https://bugs.ruby-lang.org/issues/21455) or [Enumerable#join_map](https://bugs.ruby-lang.org/issues/21386). Community feedback often helps shape which proposals move forward.

**New gems spotlight**

- June brought a few interesting new gems into the ecosystem. AWS released a fresh batch of SDK components like `aws-sdk-evs`, `aws-sdk-mpa`, and `aws-sdk-aiops`, which topped the download charts for new gems.
- Alongside those, two standout gems deserve a mention:
    - [`hati-command`](https://github.com/hackico-ai/ruby-hati-command) ([release announcement](https://www.linkedin.com/posts/mariya-giy_the-hati-command-gem-ive-been-working-on-activity-7343420184830820353-P59V)) – a small gem to help structure service objects around a clear success/failure contract, encouraging clean, expressive business logic.
    - [`llmed`](https://github.com/bit4bit/llmed) (by [Jovany Leandro G.C](https://github.com/bit4bit))– a no-code-friendly gem that lets you build LLM-powered applications with just Markdown blocks. AI tooling is gaining traction in the Ruby world, and `llmed` is an exciting example of what’s possible.
- We encourage you to check them out and maybe even build something fun and share it with the community.

## Thank you

A huge thank you to all the contributors to RubyGems and [RubyGems.org](http://rubygems.org/) this month! We deeply appreciate your support and dedication.

### Contributors to RubyGems:

- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@larouxn](https://github.com/larouxn) Nicholas La Roux
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@nobu](https://github.com/nobu) Nobuyoshi Nakada
- [@rwstauner](https://github.com/rwstauner) Randy Stauner
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@tangrufus](https://github.com/tangrufus) Tang Rufus
- [@antoinem](https://github.com/antoinem) Antoine Marguerie
- [@joshuay03](https://github.com/joshuay03) Joshua Young
- [@thomasmarshall](https://github.com/thomasmarshall) Thomas Marshall
- [@ccutrer](https://github.com/ccutrer) Cody Cutrer
- [@landongrindheim](https://github.com/landongrindheim) Landon Grindheim
- [@MSP-Greg](https://github.com/MSP-Greg) MSP-Greg
- [@Earlopain](https://github.com/Earlopain) Earlopain

### Contributors to [RubyGems.org](http://rubygems.org/):

- [@colby-swandale](https://github.com/colby-swandale) Colby Swandale
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@mghaught](https://github.com/mghaught) Marty Haught
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@simi](https://github.com/simi) Josef Šimánek
- [@landongrindheim](https://github.com/landongrindheim) Landon Grindheim
- [@iox](https://github.com/iox) Ignacio Huerta
- [@yykamei](https://github.com/yykamei) Yutaka Kamei

*If we missed you, please let us know so we can include you in our shout out!*

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.
