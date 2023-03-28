---
title: Introducing Security Device support on RubyGems’ CLI
layout: post
author: Jenny Shen
author_email: jenny.shen@shopify.com
---

In a world where many maintainer accounts are being targeted to distribute malicious code via our packages, it is crucial to add more measures that will help prevent these account takeovers. At the end of 2022, we [announced](https://blog.rubygems.org/2022/12/21/introducing-hardware-security-token-and-passkey-support.html) the addition of hardware security token and passkey support (aka WebAuthn) to help secure your RubyGems’ account in the browser.

Starting today, you can now use your registered security device as a multi-factor method on the RubyGems CLI! This feature is available in [RubyGems 3.4.11](https://blog.rubygems.org/#2023) and above.

If you have a security device registered, you will be redirected to the browser to authenticate using your security device when signing in on the command line. The same process can also apply for other MFA-required commands if enabled.

To read more about WebAuthn and multi-factor authentication support in RubyGems, please refer to the [guides](https://guides.rubygems.org/setting-up-multifactor-authentication/).

### What’s next?
We are still working to make WebAuthn be a drop-in replacement for time-based one time passwords (TOTP). In the near future, users who register a security device will be given recovery codes and be able to select the appropriate MFA level for their account without needing to set up TOTP based authentication.

We are still investing to make a safer, more secure ecosystem for Rubyists, so be sure to stay tuned for updates!

If you have any feedback, questions or ideas on how to make RubyGems better and more secure, please contact us in the [Bundler Slack workspace](https://slack.bundler.io/) or open a [GitHub issue](https://github.com/rubygems/rubygems.org/issues).
