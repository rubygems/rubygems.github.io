---
title: RubyGems.org Dependency API Deprecation
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

We're deprecating the Dependency API on RubyGems.org. To learn more, read on, or see the original [RFC][rfc].

### What is the Dependency API?

The dependency API was the primary way Bundler fetched dependency info for Gemfile resolution until the release of [Bundler 1.12](https://bundler.io/blog/2016/04/28/the-new-index-format-fastly-and-bundler-1-12.html) in April 2016, which introduced the ["new" Compact Index API](https://andre.arko.net/2014/03/28/the-new-rubygems-index-format/).

The API has a single endpoint, `/api/v1/dependencies` and `/api/v1/dependencies.json`, both accepting a `gems` query parameter.

For example, <https://index.rubygems.org/api/v1/dependencies.json?gems=rails> returns every dependency for every version of the gem `rails`.

### Why is the Dependency API being deprecated?

The dependency API makes up a huge percentage of the traffic served by by the rubygems.org rails app, and is one of the few high-traffic endpoints that is not cachable by fastly.

The Compact Index was designed to be completely cacheable and served at the edge by Fastly. In contrast, the dependency API is completely _uncacheable_, and requires RubyGems.org to run a complex database query for each request, accounting for almost 50% of the total uncached request volume to RubyGems.org with nearly 3000qps.

Because the Compact Index has been out for over half a decade and Bundler & RubyGems both support fallback to the "full" index (`specs.4.8.gz` files) when the Dependency API is unavailable, we plan to deprecate and delete the dependency API from rubygems.org over the coming months.

### What impact will this deprecation have?

If you're running a version of bundler >= 1.12, there should be no impact. Bundler sequently checks the compact index API, the dependency API, and finally the full API. Versions of bundler that support the compact index API don't use the dependency API at all for gem sources
that serve the compact index, including RubyGems.org.

For non-dependency resolution usage of the API, we advise users transition to the compact index API or the gem versions API, whichever is more appropriate for their use cases.

### Give me the details

Ok!

We're going to be performing a phased deprecation of the dependency API out of an abundence of caution.
Over the next month and a half, there will be several "brownout" periods, during which RubyGems.org will return 404s

- March 22 at XXX UTC for 5 minutes
- March 29 at the top of every hour UTC for 10 minutes
- April 03 for the entire day UTC
- April 10 onward

---

I want to conclude with a hearty thank you to everyone who helped keep the Dependency API up and running over the years.

[rfc]: https://github.com/segiddins/rfcs/blob/segiddins/deprecate-dependency-api/0000-deprecate-dependency-api.md
