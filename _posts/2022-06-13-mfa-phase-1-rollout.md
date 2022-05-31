---
title: Making popular Ruby packages more secure
layout: post
author:
author_email:
---

Attacks on the software supply chain are increasing. Our community has not gone unscathed. RubyGems has been affected by supply chain attacks in the past. It’s important for us to mitigate these risks as much as possible. Recommending stronger security practices like enabling multi-factor authentication (MFA) on high-impact packages will be a first step in improving security of the RubyGems ecosystem.

Account takeovers are the second most common attack on software supply chains ([source](https://arxiv.org/abs/2002.01139)). The countermeasure against this type of attack is simple: enabling MFA. Doing so will help reduce the chances of a successful attack by 99.9 percent ([source](https://www.microsoft.com/security/blog/2019/08/20/one-simple-action-you-can-take-to-prevent-99-9-percent-of-account-attacks/)).

Starting today, top-100 RubyGems package maintainers will begin to see reminders on the RubyGems command-line tool and website if MFA is not enabled on their accounts. Anybody who maintains a gem with more than 165 million downloads will see this recommendation.

Although this is currently just a recommendation, we will enforce MFA on high-impact gems in the future. This policy will bring us in line with other package ecosystems (e.g. [npm](https://github.blog/2022-02-01-top-100-npm-package-maintainers-require-2fa-additional-security/)).

We are committed to fostering a safer, more secure ecosystem for Rubyists. This is one of many steps we plan to take over the coming months in order to maintain a healthy, reliable ecosystem for everyone. Stay tuned!
