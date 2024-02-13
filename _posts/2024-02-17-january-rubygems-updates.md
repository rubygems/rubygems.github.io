---
title: January 2024 RubyGems Updates
layout: post
author: Gift Egwuenu
author_email: laurandidi21@gmail.com
---

Welcome to the RubyGems monthly update! As part of our efforts at Ruby Central, we publish a recap of the work that we’ve done the previous month. Read on to find out what updates were made to RubyGems and RubyGems.org in January.

## RubyGems News

In January in RubyGems, we released RubyGems [3.5.5](https://github.com/rubygems/rubygems/blob/master/CHANGELOG.md#355--2024-01-18) and Bundler [2.5.5](https://github.com/rubygems/rubygems/blob/master/bundler/CHANGELOG.md#255-january-18-2024). These releases included fixes to: [the caching specifictions directory](https://github.com/rubygems/rubygems/pull/7331), [development dependency ommission](https://github.com/rubygems/rubygems/pull/7358) and [formatting of compact index requests headers](https://github.com/rubygems/rubygems/pull/7352), as part of our continuous effort to enhance the Ruby development experience.

Some other important accomplishments from the team this month include:

- **Fixing a bug in`rack-test` related to Importmaps**

    During the development work on **importmaps**, a modern approach to serving JavaScript utilizing HTTP2, a bug in rack-test was identified. The bug manifested through failing tests, triggered when initializing sessions to ensure a `session_id` from the first response. Detailed debugging revealed issues with handling multiple cookies, specifically a blank cookie that led to crashes and test failures. The resolution involved fixing how these cookies are processed. - [(#343)](https://github.com/rack/rack-test/pull/343).
    
- **Resolution of Bundler issue with Renovatebot**

    [@deivid-rodriguez](https://github.com/deivid-rodriguez) addressed a specific Bundler resolution problem affecting the operation of Renovatebot. We try to place nice with update bots since they contribute to a more healthy and secure ecosystem. Renovate in particular does not seem to use Bundler internals, but runs Bundler directly through well defined CLI flags. This is very good for us, so it’s nice to give back and make sure the CLI flags they use work as expected.
    
    The issue happens when Renovatebot first changes the Gemfile and then runs `bundle lock –update –patch –strict`. He first investigated a solution that involved bringing the lockfile up to date but ultimately realized that this approach breaks the `--patch --strict` contract because it results in that patch level version possibly being upgraded. In the end, he decided to call the current behavior as expected and will focus on improving the error message in the future. - ([7369](https://github.com/rubygems/rubygems/issues/7369)).

- **Resolution of RubyGems require issue**
   
   [@deivid-rodriguez](https://github.com/deivid-rodriguez)  tackled a challenging issue within RubyGems related to its custom require implementation. The gemification of default gems, especially those with dependencies, unveiled issues post Ruby 3.3 release, affecting user experience. The fix ensures RubyGems `require` bypasses activating default versions of gems under conflict-prone conditions. For more details, see [#7379](https://github.com/rubygems/rubygems/pull/7379).

- **Work toward vendoring URI in RubyGems**

    This initiative was part of efforts to smooth out the extraction of default gems from `ruby-core`, ensuring a seamless transition. The successful vendoring of URI marks a significant step towards mitigating activation conflicts. Information on this update is available in [#7386](https://github.com/rubygems/rubygems/pull/7386).

- **Addressing an ENV resetting issue in RubyGems**

    Restoring Bundler-related ENV variables to empty prevents downstream issues related to trying to invoke Bundler from subprocesses, as one of our users [Edouard-chin](https://github.com/Edouard-chin) pointed out. An investigation led to the identification of a bug related to special casing empty ENV variables. The decision was made to remove this exception and the fix. Its implications are detailed in [#7383](https://github.com/rubygems/rubygems/pull/7383).

In January, RubyGems gained [163 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2024-1-01%7D...master@%7B2024-1-31%7D) contributed by 18 authors. There were 6,051 additions and 1,059 deletions across 244 files.

## RubyGems.org News

January's updates to RubyGems.org reflect a strong commitment to improving user experience, enhancing security, and modernizing the platform. 

The following are highlights of what the team worked on this month:

- **Audit/Event Logging for Enhanced Security Monitoring**

    We introduced a user-visible log of security events that have happened on their account. This will help maintainers stay on top of how their account is being used, and events that happen on the gems they own, reducing mean time to remediation for unexpected actions. This also helps the RubyGems.org security team by providing a trail that can be followed in response to security incidents.

    Critical events such as logins, password changes, email updates, API token generation and revocation, and ruby gem ownership changes are now logged. These logs are user-specific for account activities, while gem-related events are accessible to all owners of the respective gem. Check out [#4367](https://github.com/rubygems/rubygems.org/pull/4367 ) for more information.
    
    ![rubygems-org-profile-security_events.1](https://hackmd.io/_uploads/rykoTmOop.png)

- **Resolution of a multi-factor authentication (MFA) bypass on password reset vulnerability**

    A vulnerability report from HackerOne brought to our attention a critical flaw in the MFA process during password reset. This issue was addressed and resolved through the collaborative efforts of [Martin Emde](https://github.com/martinemde), with significant contributions from [Josef Šimánek](https://github.com/simi), [Samuel Giddins](https://github.com/segiddins), and [Eric](https://github.com/ericherscovich). [Read more about the report here.](https://github.com/rubygems/rubygems.org/security/advisories/GHSA-4v23-vj8h-7jp2)

- **Soft Deleting User Records**

    [@segiddins](https://github.com/segiddins) implemented a feature for soft-deleting user records, a foundational step for the audit/event logging system. This ensures the preservation of database relationships for historical records referencing users, even after an account is deleted by the user. When a user requests account deletion, we clear out all user information from the user record and mark it as deleted, but leave the row in the database. Deleted records are not shown in queries on the site. Find more information about this update in [#4376](https://github.com/rubygems/rubygems.org/pull/4376) and [#3766](https://github.com/rubygems/rubygems.org/pull/3766).

- **Updating to Rails 7.1**

  We updated RubyGems.org to Rails 7.1 to keep dependencies of the Rails app up to date. The update involved a long-running pull request that addressed dependency issues. The merge and deployment proceeded smoothly after ensuring all upstream dependencies supported Rails 7.1, along with an update to the Rails configuration to align with 7.1 defaults.

- **Introduction of a Gem Rebuild Command**

    [Ellen Dash](https://github.com/duckinator) is leading the development of a gem rebuild command to facilitate reproducible builds. Reproducible builds allow people to identify problems such as compromised build environments or builds not using the published source. For a few years now, it’s been technically possible to reproduce a build if you knew enough about the original build environment. The `gem rebuild` command’s purpose is to automate as much of this as possible.

In December, RubyGems.org gained [85 new commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2024-1-01%7D...master@%7B2024-1-31%7D) contributed by 8 authors. There were 2,490 additions and 1,238 deletions across 224 files.

## Thank you

Thank you to all the contributors of RubyGems and RubyGems.org for this month! Your contributions are greatly appreciated, and we are grateful for your support.

### Contributors to RubyGems:

- [@mrkn](https://github.com/mrkn) Kenta Murata
- [@deivid-rodriguez](https://github.com/deivid-rodriguez) David Rodríguez
- [@hyuraku](https://github.com/hyuraku) hyuraku
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@simi](https://github.com/simi) Josef Šimánek
- [@avdi](https://github.com/avdi) Avdi Grimm
- [@ccutrer](https://github.com/ccutrer) Cody Cutrer
- [@bravehager](https://github.com/bravehager) Brave Hager
- [@stanhu](https://github.com/stanhu) Stan Hu
- [@ntkme](https://github.com/ntkme) なつき
- [@olleolleolle](https://github.com/olleolleolle) Olle Jonsson
- [@ohbarye](https://github.com/ohbarye) Masato Ohba
- [@williantenfen](https://github.com/williantenfen) Willian Tenfen Wazilewski
- [@m-nakamura145](https://github.com/m-nakamura145) Masato Nakamura


### Contributors to RubyGems.org:
- [@hsbt](https://github.com/hsbt) Hiroshi Shibata
- [@simi](https://github.com/simi) Josef Šimánek
- [@martinemde](https://github.com/martinemde) Martin Emde
- [@segiddins](https://github.com/segiddins) Samuel Giddins
- [@robbyrussell](https://github.com/robbyrussell) Robby Russell
- [@a5-stable](https://github.com/a5-stable) B3
- [@duckinator](https://github.com/duckinator) Ellen Marie Dash

---
Learn more about contributing to RubyGems by visiting the RubyGems Contributing Guide. We welcome all kinds of contributions, including bug fixes, feature implementation, writing and updating documentation, and bug triage.