---
title: Temporarily disabling language support on rubygems.org
layout: post
author: Colby Swandale
author_email: colby@rubygems.org
---

I'm one of the operators of [rubygems.org](https://rubygems.org). Here's what's been happening over the past week, and a temporary change we're making as a result.

For the past seven days, [rubygems.org](https://rubygems.org) has been under sustained bot traffic from many different sources scraping data from every published gem. The volume has been large enough to force the site offline while we respond. The bots are deliberately bypassing the Fastly cache, hitting our origin servers directly.

The primary target has been our language locale pages, the translated versions of [rubygems.org](https://rubygems.org). Unfortunately, the locale system wasn't designed to cache easily through a CDN. To protect site stability, we're temporarily disabling language support while we rearchitect how locale pages are cached.

We'll restore language support as soon as we have caching in place that can handle this volume. Thank you for your patience.

P.S. if you need gem and version data for a project, we publish regular database exports at <https://rubygems.org/pages/data>. We strongly recommend using those instead of scraping [rubygems.org](https://rubygems.org) directly.
