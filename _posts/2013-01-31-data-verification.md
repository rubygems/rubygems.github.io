---
title: Data Verification
layout: post
author: evan
---

__TL;DR:__ We were able to verify that all gems served by rubygems.org are tamper-free.

### The Incident ###

As most people are aware, on January 30th rubygems.org was hit with a rogue code execution vulnerability. Much has been written (and will be written) about why the bug existed and how we're going to be dealing with making sure it never happens again.

### Data Verification ####

Right now, I want to let everyone know about the state of all the gem files. The biggest worry with a compromise like this is that an attacker could tamper with gem files and infect anyone who installed a gem. This was our biggest worry and we spent the majority of the last 36 hours working to try and detect any gems that were tampered with.

### Exploits and Checksums ###

To begin with, Mark Imbriaco (@markimbriaco) pulled down 100% of the gems from Amazon S3, where we store all the gems. He then performed 2 actions on all the gems:

* Audit the gem metadata to detect any other gems using the vulnerability.
* Generate a SHA512 checksums of the gem file.

Mark did not detect any other gems using the vulnerability, which was our first bit of good news.

He then posted all the checksums which became our checksum set 1 (CS1).

### Mirrors ###

Mirrors provide us with our best validation mechanism. A number of people run rubygems.org mirrors for various reasons and they offered up data to help us verify the gem data.

Eric Hodel (@drbrain) as well as others churned through their data and checked the data against CB1. Upon finishing this step, we had validated 95% of the gems against multiple sources. We then subtracted out the gems that had been yanked but were still available in CB1 (but because of being yanked, wouldn't be in the mirrors). Finally, we subtracted out the gems that been added to S3 in the last 20 days as validated by the S3 log files.

### Results ###

The result of all this checking and double checking is that we resulted in only 80 prerelease gems that we could not verify against a secondary source. We then opt'd to yank these gems and are in process of contacting the authors so they can push a new version.

Through the hard work of all our volunteers, we are able to confidently report that the gems available from rubygems.org have not been tampered with.

### Data and Tools ###

We have posted the checksums and tools used to verify them at the [rubygems-verification github repository](https://github.com/rubygems/rubygems-verification) to allow you to double-check our work.

### Thanks ###

So many people helped with this effort in the #rubygems-verification channel on irc.freenode.net. I want to thank all of you for your time and say that your help was instrumental in making sure rubygems.org was able to continue to operate.


