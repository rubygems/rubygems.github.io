---
title: Level up your RubyGems Account Security with Security Devices
layout: post
author: Jenny Shen
author_email: jenny.shen@shopify.com
---

In a [previous blog post](https://blog.rubygems.org/2023/04/11/security-device-cli-support.html), we introduced the latest updates to our security features, including CLI support for security devices and future plans for the feature.

We are excited to announce that WebAuthn is fully integrated and is recognized to be the preferred choice for multi-factor authentication (MFA). When users register a security device, they will now be provided with recovery codes and be able to configure their [multi-factor authentication level](https://guides.rubygems.org/setting-up-multifactor-authentication/#authentication-levels) without needing to enable time-based one time password (OTP) MFA.

### Why use a Security Device?
Security devices offer an additional layer of protection that goes beyond passwords. By leveraging the [WebAuthn standard](https://www.yubico.com/authentication-standards/webauthn/), which utilizes public-key cryptography, they effectively mitigate the risk of password-related attacks. This includes phishing or credential stuffing.

These devices not only provide enhanced security but also offer greater convenience compared to their time-based one time password counterparts, making them a preferred choice for authentication.

While time-based codes from an authentication app can be intercepted or manipulated by phishing attacks, security devices eliminate the need for code inputs. They provide stronger protection against phishing attempts as they require the security key or the user (for biometric devices) to be present. This eliminates the risks associated with code-based authentication, ensuring a more robust defence against unauthorized attacks.

### Setting up a Security Device
You can register your security keys and biometric devices on your RubyGems.org [account settings page](https://rubygems.org/settings/edit#security-device), and follow the instructions on how to add a new security device to your account. To learn more about security devices and multi-factor authentication support in RubyGems, please refer to the [guides](https://guides.rubygems.org/setting-up-webauthn-mfa/).

If you have any feedback, questions or ideas on this feature and how to make RubyGems better and more secure, please reach out to us in the [Bundler Slack workspace](https://bundler.slack.com/) or open a [GitHub issue](https://github.com/rubygems/rubygems.org/issues).
