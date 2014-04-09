---
title: RubyGems.org's response to CVE-2014-0160 (heartbleed)
layout: post
author: Sam Kottler
author_email: shk@linux.com
---

At this point you've probably heard about CVE-2014-0160, branded 'heartbleed'. Just in case you've not, it's a critical vulnerability in the immensely popular OpenSSL libary, which RubyGems.org, and a huge percentage of sites, applications, and systems use to secure communications. The vulnerability allows for an arbitrary 64k of memory to be accessed remotely. You can read more about heartbleed [here](http://heartbleed.com/).

As soon as we heard about the vulnerability we upgraded OpenSSL and applications linked against it and restarted our SSL termination layer. That prevents our private key and other sensitive information from potentially being accessed going forward. It is impossible to know whether private key material was leaked as a result of the vulnerability so we immediately moved to regenerate our SSL private key and certificate. That new certificate has been deployed for about 36 hours.

The SHA1 fingerprint of the new certificate is `F6 F6 C6 7A 91 D8 51 28 02 1D 19 8F 8A FB A5 7D 4E D3 9C 34`.

As always, please feel free to [reach out](mailto:shk@linux.com) to the RubyGems.org operations team with any security issues. Thanks for using RubyGems.org!
