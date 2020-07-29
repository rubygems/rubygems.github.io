---
title: Removing SHA1 passwords from RubyGems.org
layout: post
author: Colby Swandale
---

When the RubyGems.org Rails app was created in 2009, the “standard” way to store passwords was to use the SHA1 hashing algorithm. While there were limited academic attacks against SHA1 published as early as 2005, practical attacks didn’t arrive until the mid-2010s. Today, SHA1 is is widely considered insecure, and there are much better options available.

RubyGems.org switched to using BCrypt by default for new accounts in 2013. As part of that switch, users from before 2013 are automatically migrated from SHA1 to BCrypt the next time they log in. In the coming days, RubyGems.org will be removing the remaining SHA1 passwords for any user who has not logged in to their account since 2013.

After this change, users who have not logged in since 2013 will need to perform a password reset using their email address.

Accounts created or logged in since 2013 are not effected. For those accounts, no action is required.

## FAQ

### What is changing?

RubyGems.org will remove legacy stored passwords hashed with the SHA1 algorithm. Affected accounts will need to reset their password via the email address registered to their account. No other user information will be modified or removed.

### How can I tell if my account will be effected?

If you have logged onto your rubygems.org account since 2013, your password has been automatically migrated to use BCrypt and no further action is required.

## Why are we making this change?

SHA1 is no longer an acceptable method to hash user passwords. It was formally deprecated by NIST in 2011, and publicly broken by academic researchers in 2017.

Storing legacy SHA1 hashes creates a security risk. If attackers were to steal the RubyGems.org users table, they would be able to crack those SHA1 hashes with little effort. Those cracked passwords could then be used to take over RubyGems.org accounts and yank widely-used gems, or publish malicious gems. To eliminate this risk, we will be deleting all SHA1 password hashes from the RubyGems.org database.
