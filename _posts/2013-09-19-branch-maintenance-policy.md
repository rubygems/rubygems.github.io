---
title: Branch Maintenance Policies
layout: post
author: Eric Hodel
author_email: drbrain@segment7.net
---

Currently RubyGems is maintaining the following:

* RubyGems 1.8.x for security and Ruby forward-compatibility
* RubyGems 2.0.x for security and bug fixes
* RubyGems master (currently 2.1.x, 2.2.0 soon) for security fixes, bug fixes
  and new features

The RubyGems 2.x series has been relatively problem-free despite some large
internal changes.  The changes since RubyGems 1.8.x have made RubyGems easier
to work on and have made it easy to quickly respond to bugs with fixes.  The
number of changes between 1.8.x and 2.x make it difficult to continue to
backport bug fixes to the 1.8.x branch, so users are recommended to upgrade to
RubyGems 2.x.

RubyGems 1.8.x will continue to receive security fixes as long as Ruby 1.9.3 is
receiving security fixes.  RubyGems 1.8.x may receive fixes for
forward-compatibility (such as the changes to extension building in Ruby
2.0.0).

RubyGems 2.0.x receives bug fixes because it is included in Ruby 2.0.0.  When
Ruby 2.1.0 is released, we may choose to discontinue bug fixes for RubyGems
2.0.x.  RubyGems 2.0.x will receive security fixes as long as Ruby 2.0.0 is
receiving security fixes.

Bug fixes to RubyGems 2.1.x will stop receiving bug fixes when RubyGems 2.2.0
is released.

The RubyGems 2.x series will always support Ruby 1.8.7.

