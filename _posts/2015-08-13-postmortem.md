---
title: Post-Mortem of Connectivity Issues on August 10th
layout: post
author: David Radcliffe
author_email: radcliffe.david@gmail.com
---

RubyGems.org had intermittent connectivity problems for several periods on August 10th from about 7:08 UTC until 10:40 UTC, and again from 19:03 UTC until 19:19 UTC. This primarily disrupted gem downloads, and may have caused intermittent errors for gem pushes as well. This post aims to explain the issue and how we'll work to prevent a similar problem in the future.

All gems are stored in Amazon's Simple Storage Service, also known as S3. On August 10th, AWS had an extended outage in their Virginia region that affected several services, including S3. Requests to S3 to get gem files (and gemspecs) where intermittently failing, as well as requests to save new gems/gemspecs into S3. Our monitoring showed that **during this period, about 4% of download requests were failing**.

All gem downloads pass through Fastly, our CDN partner, where we cache gems in locations near you all around the world. Caching really saved us, since about 88% of requests were cached and didn't need to hit S3 at all. This means that 8% of all requests were hitting S3 successfully during this period.

That being said, having all our files stored in one region is still not ideal. We have plans to start replicating all our files into a second region. This will provide a backup for disaster recovery and hopefully we will also be able to serve download requests from the second region if the primary region is down.

I'm sorry we had trouble serving requests this week, and we're making some changes to improve this for the future.
