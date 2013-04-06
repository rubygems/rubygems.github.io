---
title: Post-Mortem of Today's Partial Outage
layout: post
author: Sam Kottler
author_email: shk@linux.com
---

Over a period of around 12 hours, from late last night (April 5th) eastern US time until approximately 10:45am this morning there was a partial outage of Rubygems.org. The root disk on the application server filled up completely because of some logs that didn't get rotated. This prevented new account signups, password resets, and gem pushes from taking place. I'm sorry that this happened and will personally ensure steps are taken to alert the Rubygems.org operations team before outages of this nature happen again.

Right now there isn't systems monitoring in place for the servers that run Rubygems.org, which makes debugging issues very difficult without accessing a remote machine and manually surfacing the problem. We were planning on deploying the Datadog agent onto the instances tonight even before this incident. In tandem with Pagerduty, Datadog will allow us to setup an on-call schedule for those contributors with access to the infrastructure. We'll also be taking a look at the logrotate configurations and tune them appropriately to prevent disks from filling up in the future.

I'm very sorry this happened and prevented gem maintainers from being able to effectively use the service.
