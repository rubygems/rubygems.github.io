---
title: Rubyconf / Rubygems Hackfest
layout: post
author: cmeik
---

If you followed the twitter feed for Rubyconf this past week, you
probably noticed that this years conference was the host of the first, of
hopefully many more, Rubygems.org hackfests.  The hackfest started at
6:30 PM, after Matz's chat with Evan wrapped up, and went to almost
11:00 PM, when we had scheduled to wrap up around 8:30.

I am personally blown away by the amazing turnout we had, and especially
floored that in addition to commenting and closing many issues which
were no longer valid, almost every single attendee of the hackfest
opened a pull request to fix either an outstanding bug, or add a new
feature.

I'm still in the process of working through the open pull requests and
issues which need further commenting, but I wanted to provide some of
the highlights, and welcome some of the soon-to-be new Rubygems.org committers.

Please let me know if I missed you, or something you worked on in the list.
It was amazing to see developers of all kind, from companies such
as Yardstick, New Relic and Bluebox step up to assist in helping build
and maintain a community resource.

[Mark Bennett](https://github.com/markbennett)

* [List number of gems pushed on Profile page.](https://github.com/rubygems/rubygems.org/issues/261)
* [Add pushed gems count to profiles](https://github.com/rubygems/rubygems.org/pull/478)

[Amos King](https://github.com/adkron) and
[Charlie Sanders](https://github.com/sandersch)

* [Block gems that are yanked from being queried through the API](https://github.com/rubygems/rubygems.org/issues/406)
* [Requires gem names to have at least one alpha character](https://github.com/rubygems/rubygems.org/pull/476)
* [Gem name restrictions might be wrong](https://github.com/rubygems/rubygems.org/issues/426)

[Jared McFarland](https://github.com/jaredonline) and
[mildmojo](https://github.com/mildmojo)

* [Issue #438](https://github.com/rubygems/rubygems.org/pull/474)
* [Fixes tests: resets current directory in gemcutter After block.](https://github.com/rubygems/rubygems.org/pull/485)
* [Testing race condition](https://github.com/rubygems/rubygems.org/issues/438)
* [Fixes download test for count/day over month boundary.](https://github.com/rubygems/rubygems.org/pull/477)
* [Tests fail on the first of the month](https://github.com/rubygems/rubygems.org/issues/465)

[Chris Kelly](https://github.com/amateurhuman)

* [Add per gem rss feed](https://github.com/rubygems/rubygems.org/pull/479)

[Matt Simpson](https://github.com/coffeencoke)

* [Disallow gem names with CAPS for users AND TESTS](https://github.com/rubygems/rubygems.org/pull/451)
* [Disallow gem names with caps](https://github.com/rubygems/rubygems.org/pull/481)

[Daniel Huckstep](https://github.com/darkhelmet)

* [Replace memcached with dalli](https://github.com/rubygems/rubygems.org/pull/473)
* [Add test for bad characters in description/summary](https://github.com/rubygems/rubygems.org/pull/483)
* [Strange characters in description causes gem push to blow up](https://github.com/rubygems/rubygems.org/issues/275)

[Jack Foy](https://github.com/jfoy) and
[Fletcher Nichol](https://github.com/fnichol)

* [Returns 404 on /api/v1/gems#show for unknown gem with all formats types](https://github.com/rubygems/rubygems.org/pull/482)
* [404 or 406 returned depending on format](https://github.com/rubygems/rubygems.org/issues/443)

[Clyde Law](https://github.com/Skipants) and
[Andrew Szczepanski](https://github.com/Umofomia)

* [Remove librato.yml containing API credentials](https://github.com/rubygems/rubygems.org/pull/480)
