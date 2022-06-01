---
title: Making popular Ruby packages more secure
layout: post
author: Betty Li
author_email: betty.li@shopify.com
---

Attacks on the software supply chain are increasing. Our community has not gone unscathed. RubyGems has been affected by supply chain attacks in the past. It’s important for us to mitigate these risks as much as possible. Recommending stronger security practices like enabling multi-factor authentication (MFA) on popular packages is a first step towards improving security of the RubyGems ecosystem.

Account takeovers are the [second most common](https://arxiv.org/abs/2002.01139) attack on software supply chains. The countermeasure against this type of attack is simple: enabling MFA. Doing so will help [reduce the chances](https://www.microsoft.com/security/blog/2019/08/20/one-simple-action-you-can-take-to-prevent-99-9-percent-of-account-attacks/) of a successful attack by 99.9 percent.

As proposed in the [MFA rollout RFC](https://github.com/rubygems/rfcs/blob/master/text/0007-mfa-rollout.md), RubyGems is beginning to move towards greater adoption of multi-factor authentication for gem maintainers.

Starting today, the maintainers of the top 100 RubyGems packages will begin to see reminders on the RubyGems command-line tool and website if MFA is not enabled on their accounts. Anybody who maintains a gem with more than 165 million downloads will see this recommendation.

Although this is currently just a recommendation, we will enforce MFA on the top 100 gems in the future. This policy will bring us in line with other package ecosystems (e.g. [npm](https://github.blog/2022-02-01-top-100-npm-package-maintainers-require-2fa-additional-security/)) as well as [GitHub](https://github.blog/2022-05-04-software-security-starts-with-the-developer-securing-developer-accounts-with-2fa/).

We are committed to fostering a safer, more secure ecosystem for Rubyists. This is one of many steps we plan to take over the coming months in order to maintain a healthy, reliable ecosystem for everyone. Stay tuned!
