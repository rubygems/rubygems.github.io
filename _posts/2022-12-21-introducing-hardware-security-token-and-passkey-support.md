---
title: Introducing Hardware Security Token & Passkey support
layout: post
author: Colby Swandale
author_email: me@colby.fyi
---

Hello everyone!

I’m excited to share two new features that will further safeguard the security of your rubygems.org account – hardware security token & 
Passkey (aka WebAuthn) support.

In recent years, authors of popular language packages have become prime targets of attackers with the aim of [publishing code to distribute malware](https://arxiv.org/pdf/2002.01139.pdf). In more severe cases, package authors are targeted specifically with the objective of targeting [a particular company for further attack](https://www.bleepingcomputer.com/news/security/npm-packages-used-by-crypto-exchanges-compromised/).

In response to these new trends, RubyGems.org and the wider community have [focused heavily on investing in its security & policies](https://rubycentral.org/news/ruby-shield/) to ensure accounts are safeguarded from takeover attacks. In 2018 RubyGems.org added support for 2FA, allowing users to require a One Time Password when signing in. I’m pleased to share that in addition to One-Time Passwords, authors can now protect their RubyGems.org accounts with Two-Factor Authentication via a Hardware Security Token & Passkey.

### What is a Hardware Security Token?

A hardware security token is a small physical device that plugs into your computer, holding a secure private/public key. Once registered in RubyGems.org, the hardware token can be used as a second authentication step to verify your identity. The benefit of Hardware Security Tokens is that they are tough to duplicate and require the device to be physically present to sign into your account, but with the tradeoff, they can become lost. We recommend having a second backup token somewhere safe for users looking to adopt Hardware Security Tokens.

Hardware Security Tokens can be purchased from various vendors that conform to the [U2F standard](https://www.yubico.com/authentication-standards/fido-u2f/). Some of the vendors we recommend:

* [Yubico](https://www.yubico.com/products/)
* [Google Titan Security Key](https://cloud.google.com/titan-security-key)

### What is Passkey aka WebAuthN?

[WebAuthn](https://webauthn.guide) is a relatively new standard that builds on top of the Hardware Security Token (U2F) standard without needing a separate physical device. Known more recently as Passkey, WebAuthn allows you to register a virtual security token using your existing device to hold the public/private key inside a secure location.

The great thing about Passkey is that you can use it without purchasing a separate physical device. It can be synced across multiple devices, making it easy to recover if you lose your computer.

Passkey is a relatively new standard, so not all devices or browsers currently support it. Check your Browser’s documentation for more information.

### How do I register a Hardware Security Token or Passkey?

You can register your Hardware Security Token or Passkey on your [RubyGems.org account settings page](https://rubygems.org/settings/edit) under “Security Device”, and follow the instructions on how to add a new Hardware Security Token or Passkey to your account.

### CLI support coming soon

One important note is that the RubyGems CLI does not support Hardware Security Tokens or Passkey when signing in, but work has begun to support this soon. You can work around this by generating an API key via the Web UI and using this key in your development environment.

Lastly, a special thanks to everyone involved in working on [making & testing this feature.](https://github.com/rubygems/rubygems.org/pull/2865) ❤️

Colby
