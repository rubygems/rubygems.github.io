---
title: Post-Mortem of Today's Connectivity Issues
layout: post
author: Sam Kottler
author_email: shk@linux.com
---

The RubyGems.org web interface and API were intermittently down for a period on August 7th from about 8:43 UTC until 14:07 UTC. This post aims to explain the issue and how we'll work to prevent similar problems in the future.

In the early morning hours eastern US time, RubyGems.org internal and external monitoring systems began sending alerts to the operations team. Due to the timing of the alerts no one with access to diagnose and fix the issue was awake, which caused the alerts to go unacknowledged for a period of time. Eventually members of the operations team were online and began diagnosing the problem. As we began digging into the logs across our application tier it became obvious that there were a large number of requests which resulted in a 404 getting returned to the client from the application itself. Rather than requests which result in 404's from our load balancers, like a gem file which doesn't exist, these requests began consuming all the available worker processes across our application servers,. The load on our database shot up and the application would stop responding to requests in a timely manner. Given the various timeouts we have in place across our systems, requests would get processed properly until the workers and database got overwhelmed.

We moved quickly to isolate the source of the traffic and immediately put a fix in place across our load balancer tier. From the information we were able to collect it seems as though someone configured RubyGems.org as a repository in their `pom.xml`, a file which is used by Maven to configured and run various build-related tasks. Given the address space we saw traffic originating from, it seems likely that the `pom.xml` was distributed to a build farm with many machines. In the next few days we'll be reaching out to the owner of the CIDR block containing the large amount of traffic we received. We've blocked all requests which include certain keywords, such as `.jar` to prevent any further such requests.

Over the next few days and weeks we'll be putting better monitoring in place around worker usage. We'd already been talking about setting up an on-call rotation and plan to have that in place soon.

I'm very sorry this happened and prevented users from being able to effectively use RubyGems.org. Feel free to [email me](mailto:shk@linux.com) with any questions or concerns you've got.
