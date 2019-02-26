---
title: March 2019 Security Advisories
layout: post
author: Hiroshi SHIBATA
---

We disclose the vulnerablities of RubyGems. They are resported from hackerone.

We strongly recommend to upgrade the latest stable version of RubyGems 3.0.3 or 2.7.8.
If you couldn't upgrade RubyGems 2.7 or 3.0, You can use [this patch]() for RubyGems 2.6.

## CVE-2019-8320: Delete directory using symlink when decompressing tar

### Description

A Directory Traversal issue was discovered in RubyGems 2.7.6 and later through 3.0.2.
Before making new directories or touching files (which now include
path-checking code for symlinks), it would delete the target
destination. If that destination was hidden behind a symlink, a
malicious gem could delete arbitrary files on the user's machine,
presuming the attacker could guess at paths. Given how frequently gem is run
as sudo, and how predictable paths are on modern systems (/tmp,
/usr, etc.), this could likely lead to data loss or an unusable
system.

### Reporter

ooooooo_q


## CVE-2019-8321: Escape sequence injection vulnerability in `verbose`

### Description

An issue was discovered in RubyGems 2.6 and later through 3.0.2.
Since Gem::UserInteraction#verbose calls say without escaping, escape
sequence injection is possible.

### Reporter

ooooooo_q

## CVE-2019-8322: Escape sequence injection vulnerability in `gem owner`

### Description

An issue was discovered in RubyGems 2.6 and later through 3.0.2.
The gem owner command outputs the contents of the API response directly
to stdout. Therefore, if the response is crafted, escape sequence
injection may occur.

### Reporter

ooooooo_q

## CVE-2019-8323: Escape sequence injection vulnerability in API response handling

### Description

An issue was discovered in RubyGems 2.6 and later through 3.0.2.
Gem::GemcutterUtilities#with_response may output the API response to
stdout as it is. Therefore, if the API side modifies the response,
escape sequence injection may occur.

### Reporter

ooooooo_q

## CVE-2019-8324: Installing a malicious gem may lead to arbitrary code execution

### Description

An issue was discovered in RubyGems 2.6 and later through 3.0.2.
A crafted gem with a multi-line name is not handled correctly.
Therefore, an attacker could inject arbitrary code to the stub line of
gemspec, which is eval-ed by code in ensure_loadable_spec during
the preinstall check.

### Reporter

nyangawa

## CVE-2019-8325: Escape sequence injection vulnerability in errors

### Description

An issue was discovered in RubyGems 2.6 and later through 3.0.2.
Since Gem::CommandManager#run calls alert_error without escaping,
escape sequence injection is possible. (There are many ways to cause
an error.)

### Reporter

ooooooo_q
