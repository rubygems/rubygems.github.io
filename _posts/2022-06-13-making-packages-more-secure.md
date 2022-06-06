---
title: Making popular Ruby packages more secure
layout: post
author: Betty Li
author_email: betty.li@shopify.com
---

Attacks on the software supply chain are increasing and our community has not gone unscathed. RubyGems has been affected by supply chain attacks in the past, so it’s important for us to mitigate these risks as much as possible. Recommending stronger security practices like enabling multi-factor authentication (MFA) on popular packages is a first step towards improving the security of the RubyGems ecosystem.

Account takeovers are the [second most common](https://arxiv.org/abs/2002.01139) attack on software supply chains. The countermeasure against this type of attack is simple: enabling MFA. Doing so can [prevent 99.9 percent](https://www.microsoft.com/security/blog/2019/08/20/one-simple-action-you-can-take-to-prevent-99-9-percent-of-account-attacks/) of account takeover attacks.

As proposed in the [MFA rollout RFC](https://github.com/rubygems/rfcs/blob/master/text/0007-mfa-rollout.md), RubyGems is beginning to move towards greater adoption of multi-factor authentication for gem maintainers.

Starting today (June 13, 2022), the maintainers of at least the top 100 RubyGems packages will begin to see warnings on the RubyGems command-line tool and website if MFA is not enabled on their accounts. Anybody who maintains a gem with more than 165 million downloads will see this recommendation.

Although this is currently just a recommendation, we will begin to enforce MFA for maintainers of those gems in two months’ time (August 15, 2022). This policy will bring us in line with other package ecosystems (e.g. [npm](https://github.blog/2022-02-01-top-100-npm-package-maintainers-require-2fa-additional-security/)) as well as [GitHub](https://github.blog/2022-05-04-software-security-starts-with-the-developer-securing-developer-accounts-with-2fa/).

Maintainers affected by this policy will receive email reminders to enable MFA one-month and one-week before the enforcement goes into effect. We recommend that maintainers set their MFA [authentication level](https://guides.rubygems.org/setting-up-multifactor-authentication/#authentication-levels) to `UI and API`. However, `UI and gem signin` is acceptable too.

Once these policy changes are fully complete for maintainers of the most popular gems, we intend to increase coverage by extending the MFA requirement to more gems in future. We’ll communicate any proposed changes in advance, but in the meantime please contact us in the [Bundler Slack workspace](https://slack.bundler.io/) or open a [GitHub issue](https://github.com/rubygems/rubygems.org/issues) if you have any feedback, questions or concerns.

We are committed to fostering a safer, more secure ecosystem for Rubyists. This is one of many steps we plan to take over the coming months in order to maintain a healthy, reliable ecosystem for everyone. Stay tuned!
