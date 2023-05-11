---
title: RubyGems.org Dependency API Deprecation
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

**Update**: The Dependency API will be disabled on May 24, after a [final two week extension](/2023/04/07/dependency-api-deprecation-delayed.html)

**Update:** The Dependency API [will be disabled on May 10 instead](/2023/04/07/dependency-api-deprecation-delayed.html), one month later than mentioned here. If you are having issues with Nexus, Artifactory, Chef, or another product that uses the dependency API, read [the post about delaying the deprecation](/2023/04/07/dependency-api-deprecation-delayed.html)

We're deprecating [the Dependency API](https://guides.rubygems.org/rubygems-org-api/#misc-methods) on RubyGems.org. To learn more, read on, or see the original [RFC][rfc] about this deprecation.

[rfc]: https://github.com/segiddins/rfcs/blob/segiddins/deprecate-dependency-api/0000-deprecate-dependency-api.md

### What is the Dependency API?

The dependency API was the primary way Bundler fetched dependency info for Gemfile resolution from [Bundler 1.1](https://github.com/rubygems/bundler/blob/master/CHANGELOG.md#11pre-january-21-2011) until the release of [Bundler 1.12](https://bundler.io/blog/2016/04/28/the-new-index-format-fastly-and-bundler-1-12.html) in April 2016, which introduced the ["new" Compact Index API](https://andre.arko.net/2014/03/28/the-new-rubygems-index-format/).

The API has a single endpoint, `/api/v1/dependencies` (returning responses as Marshal or as JSON), accepting a single comma-separated `gems` query parameter.

For example, <https://index.rubygems.org/api/v1/dependencies.json?gems=rails> returns every dependency for every version of the gem `rails`.

### Why is the Dependency API being deprecated?

The dependency API is extremely resource-intensive: even today, it makes up 20-25% of the traffic served by the RubyGems.org Rails app that cannot be cached by Fastly. Each unique list of gems requires RubyGems.org to run a complex database query, and a majority of requests include a unique list of gems.

In contrast to the Dependency API, the Compact Index API is designed to be cachable. Since the  Compact Index has been out for almost seven years, and since Bundler & RubyGems both support fallback to the slower "full" index when the Dependency API is unavailable, we plan to deprecate and delete the dependency API from RubyGems.org over the coming months.

### What impact will this deprecation have?

We expect this deprecation to have no user-facing impact.

If you are installing gems from RubyGems.org using versions of Bundler more than 7 years old (1.11 or older), your installs will get slower. Hopefully, everyone has upgraded their copy of Bundler at least once in the last 7 years, and their installs can continue at full speed.

If you are installing gems from other gem sources, like [Gemstash][1], [Geminabox][2], [Nexus][3], [Artifactory][4], or [GitHub Packages][5], nothing will change. Bundler will continue to try the Compact Index API first, then fall back to the Dependency API, then fall back to the full index.

[1]: https://github.com/rubygems/gemstash
[2]: https://github.com/geminabox/geminabox
[3]: https://www.sonatype.com/products/nexus-repository
[4]: https://jfrog.com/artifactory/
[5]: https://github.com/features/packages

If you are using the Dependency API directly, and not through Bundler or Rubygems, we recommend that you switch to either the Compact Index API or the Gem Version API, whichever can more easily provide the information that you need.

### Give me the details

Ok!

We're going to be performing a phased deprecation of the dependency API out of an abundence of caution. Over the next month and a half, there will be several "brownout" periods, during which RubyGems.org will return 404s from the Dependency API.

- March 22 at 00:00 UTC (4pm PT / 7pm ET) for 5 minutes
- March 29 at the top of every hour UTC for 10 minutes
- April 03 for the entire day UTC
- April 10 from 00:00 UTC onward

---

I want to conclude with a hearty thank you to everyone who helped keep the Dependency API up and running over the years, especially [@qrush](https://github.com/qrush/) for first creating the API, [@hone](https://github.com/hone/) for rewriting the API into a scalable service, and [@sonalkr132](https://github.com/sonalkr132/) for merging the service back into the main Rails app, as well as all the other Bundler and RubyGems.org volunteers over the years.
