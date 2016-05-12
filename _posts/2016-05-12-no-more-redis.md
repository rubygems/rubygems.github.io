---
title: Removing redis from our stack
layout: post
author: Arthur Nogueira Neves
author_email: arthurnn@gmail.com
---

Hello Ruby community,

Today we have some good news to announce: We no longer need Redis to run RubyGems.org. We have a brand new download stats system in place and we have shut down our Redis instances.

## Is Redis bad?
Not at all, if used correctly! A lot of companies use Redis, and there are a lot of use cases for it. One of the main use cases for Redis is to use it as a queue for background jobs. We use PostgreSQL and DelayedJob for our background jobs instead, so we don't need Redis for that. Our problems came from the way we were using it, and how much data we were storing. We were storing all the data in a permanent, never expiring fashion with quite a bit of storage and memory growth.
One of the problems we encountered multiple times with Redis, was that if an instance would go down, it would take many minutes to bring it up again, as it needs everything in memory. We had some Redis failures that took us about 45 minutes to bring it back up. This is not usually a problem when you don’t have a lot of data in Redis, like the background job case.

## Our previous stats architecture with Redis
We mainly were using Redis for the gem download counts. The architecture for many years was this:  
1. Every time a gem was downloaded the request would first pass through our Nginx load balancers.  
2. Nginx would send a secondary http request to an internal service with the gem information before redirecting the user to our gem CDN.  
3. This internal service was a small C backend that would parse the request, and increment counters in Redis.  
4. Those counters from Redis were shown on the various RubyGems.org pages and API responses.  

As you can imagine, RubyGems.org recives a lot of download requests. We wanted to serve downloads directly from our CDN but we needed the requests to hit Nginx first to track the downloads. Also, if any part of this architecture was down we would permanently lose download counts.

## What are we using now
We can now serve all gem downloads directly from Fastly, our CDN provider. Here’s what our new architecture looks like:  
1. Gems download requests hit Fastly, where the gems may already be cached geographically close to the user.  
2. Fastly generates a log file every five minutes, and pushes that log file to S3.  
3. S3 pushes a SQS notification message to a queue.  
4. The RubyGems.org rails app consumes those SQS messages and schedules a background job to process each new S3 file.  
5. DelayedJob works the background job and updates the counters in PostgreSQL.  
6. The rails app can now use the counters directly from the PostgreSQL database.  

## Drawbacks of the new architecture
- Counters are only updated every five minutes. However this is a small price to pay and actually allows us to do more caching.

## Wins on the new architecture
- We can serve .gem downloads directly from CDN at edge locations.
- The number of permanent data stores goes down from 2 to 1, which is a huge win for the resiliency of our service.
- Our stack became simpler
- Smaller downtimes windows
- Easier local development setup
- We can pause the background processing or even recount download counts altogether if needed

## Future plans
At the time this was written we are still serving gems via nginx and a redirect to Fastly. This will be changed in the near future as we complete the full transition to Fastly. Expect another blog post explaining this transition too.

## Links
[https://github.com/rubygems/rubygems-infrastructure/issues/35](https://github.com/rubygems/rubygems-infrastructure/issues/35)
[https://github.com/rubygems/rubygems.org/issues/1208](https://github.com/rubygems/rubygems.org/issues/1208)
[https://github.com/rubygems/rubygems.org/issues/1089](https://github.com/rubygems/rubygems.org/issues/1089)
[https://github.com/rubygems/rubygems.org/pull/1176](https://github.com/rubygems/rubygems.org/pull/1176)

## Special thanks to:
[Aaron Suggs](https://github.com/ktheory), [David Radcliffe](https://github.com/dwradcliffe), [Arthur Neves](https://github.com/arthurnn) for working hard on this project.

