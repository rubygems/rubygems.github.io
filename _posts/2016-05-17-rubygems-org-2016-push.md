---
title: RubyGems.org 2016 Push
layout: post
author: Nick Quaranto
author_email: nick@quaran.to
---

Here's a few ideas for directions to push RubyGems.org into a better place for the rest of 2016. If you love RubyGems and hope to see it improve, this is for you!

<img src="/images/push-heart.gif" width="100%" />

## Team Formation

We've historically had a team of people that have been interested in working on RubyGems.org. When Gemcutter first started, I used to give commit access to anyone who had a Pull Request or commit accepted into the repo, following the pattern that Rubinius used. As time went on, that fell out of practice. People would still get involved through the same channels: GitHub Issues or helping on the #rubygems IRC channel, but it's kind of unclear now how people join.

Recently, [RubyTogether](http://rubytogether.org) has helped out by paying developers to work on RubyGems.org and Bundler. This is huge! But from the outside it's hard to tell how this works, or how to get involved. We have a big [Contribution Guide](http://guides.rubygems.org/contributing/) but it spans across all RubyGems projects. Our [CONTRIBUTING.md](https://github.com/rubygems/rubygems.org/blob/master/CONTRIBUTING.md) covers mostly technical aspects and not the social ones.

Let's make this process open. Here's what I'd love to see:

1. A new team page on RubyGems.org showing who's on it, and what roles are (active, advisory, retired, etc)
2. Explain how RubyGems.org relates to other projects + organizations in the RubyGems ecosystem better
3. Clear, defined ways to get on the team, how to "move up" from being on the outside, to committing, to deploying, and how to "retire" if need be

We owe it to the community and to ourselves to make this an empowering and inclusive process, and to keep this critical piece of infrastructure not just well-oiled, but well-kept.


## Policies

We're long past due forming real written policies about how RubyGems.org makes decisions and treats our users' data. This is due to the a legacy of being a volunteer run service, but that's a bad excuse for not having any formal ways of handling situations. Thanks to some collaboration with NPM, we have a great start to a suite of policies for our packages and servicing our community. Alongside of our established [Code of Conduct](https://github.com/rubygems/rubygems.org/blob/master/CONDUCT.md), we have draft policies ready for:

1. Gem Name Disputes
2. Privacy
3. Receiving Abuse Reports

We have most of these in effect already, especially as we've dealt with various support issues over the years. However - spoken policies are liable to change on a whim, and aren't transparent enough for an open source project. I'm hoping by the end of the year we can publish these and get more feedback on them from the community.


## Self-Support

Our [help site](http://help.rubygems.org) response time is not the best. Here's some stats from 2015 and 2016 so far:

<img src="/images/push-2015.png" width="100%" />

<img src="/images/push-2016.png" width="100%" />

Embarrassing. It usually takes **months** to get a response! I'm sorry if you have waited forever for a resolution from us. We've tried different strategies of dealing with the queue in the past without much success. Luckily, our volume is quite low, but this does not inspire confidence in the Ruby ecosystem. We need to fix some of the core issues that cause support requests, including:

* Better automation of gem ownership transfers
* Merging user accounts
* Removing user accounts
* Recovering a lost email / user account

For some of these problems, we have a set of support scripts that help automate those tasks. It's time to expose more of these features to the UI so others can use them, and we can lessen the cognitive load on the RubyGems.org team going forward. Ideally, I'd like the goal here to be closing the help site, which means that all tasks _must_ be automated. I think this is only fair, as support of a service is labor, and I don't think it's a cost we can continue to run on a volunteer basis anymore.

## How can you help?

If you're interested in helping out with anything here, I'd love to get more people involved. There's definitely "cooler" features to work on in the future, but I strongly feel we need to push to get the help queue back under control first.

Feel free to [email me](nick@quaran.to) and I'll get in touch. Thanks for reading!

<small>PS: If you'd like a RubyGems.org sticker...stay tuned!</small>
