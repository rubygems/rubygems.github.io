---
title: Requiring MFA on popular gem maintainers
layout: post
author: Jenny Shen
author_email: jenny.shen@shopify.com
---
<p align="center">
    <img src="/images/gem-with-thumbs-up-mfa-dropshadow.png" alt="Doodle of a RubyGem wearing a MFA hat, giving a thumbs up" width="300"/>
</p>

Two months ago, we outlined our [commitment](https://blog.rubygems.org/2022/06/13/making-packages-more-secure.html) to making Ruby’s supply chain more secure. To combat account takeovers — the second most common software supply chain attack —  we announced a policy to require MFA on at least the top-100 RubyGems packages.

Today (August 15th, 2022), we will begin to enforce MFA on owners of gems with over 180 million total downloads. Users in this category who do not have MFA enabled on the `UI and API` or `UI and gem signin` level will not be able to edit their profile on the web, perform [privileged actions](https://guides.rubygems.org/mfa-requirement-opt-in/#privileged-operations) (i.e. push and yank gems, or add and remove gem owners) or sign in on the command line until they [configure MFA](https://guides.rubygems.org/setting-up-multifactor-authentication/).

Maintainers of gems that surpass 165 million total downloads will continue to receive recommendation reminders on the UI and CLI until the gem reaches 180 million total downloads. At that point, MFA will be required.

This policy would bring us in line with the policies made by other package ecosystems. We have plans to increase MFA adoption on RubyGems. If you have ideas on how future rollouts should be approached, join this [discussion](https://github.com/rubygems/rfcs/issues/42) in our RFC repository! 

In addition, we are also currently working on adding support for [WebAuthn](https://webauthn.guide/). Maintainers would be able to use hardware tokens, biometric keys, and other WebAuthn-supported devices as their multi-factor device of choice.

Be sure to stay tuned for updates! As always, if you have any feedback, questions or ideas on how to make RubyGems better and more secure, please contact us in the [Bundler Slack workspace](https://slack.bundler.io/) or open a [GitHub issue](https://github.com/rubygems/rubygems.org/issues). If you require account assistance based on the changes rolled out today, please reach out to [support@rubygems.org](mailto:support@rubygems.org).
