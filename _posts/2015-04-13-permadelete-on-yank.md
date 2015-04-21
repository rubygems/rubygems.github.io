---
title: Policy change about gem yank
layout: post
author: Arthur Nogueira Neves
author_email: arthurnn@gmail.com
---

# Heads up: Policy change about `gem yank`

`gem yank` now deletes the gem permanently as of April 20th, 2015. (Finally!)

## Why?

"Yanking" a gem was introduced as a way to remove a gem from the RubyGems.org index, usually because of an accidental `gem push` or someone wanting to allow others to take over the gem's name.

Our policy has been to not permanently delete the .gem file when a gem was yanked, but over the years that has caused massive support backlogs. Most of the support cases are due to someone accidentally pushing a gem that has internal or sensitive code - and usually our team of volunteers can take weeks to months to respond and remove it.

One note about the new behavior: `gem yank` will remove the .gem file from S3 and our CDN, but it will not stop unofficial mirrors from copying the gem or anyone publicly downloading [via webhooks](http://guides.rubygems.org/rubygems-org-api/#webhook-methods). If you've pushed a gem with internal code, you still need to reset API keys, URLs, or anything else sensitive despite the new behavior.

The policy around pushing the same version has not changed. A gem version can not be published twice. So if you `gem yank` a version, you cannot quickly fix something then push a new version. You still need to bump the version number - luckily you won't run out of numbers anytime soon!

## A final note

A concern of ours about `gem yank` and its behavior was that someone could maliciously or accidentally remove gems that others depended on. However, we've been using an Amazon S3 bucket to store the gems for years now [with versioning](http://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html) on - so if someone does remove gems that are necessary, we can easily restore them. We hope it won't ever be.

Hopefully we'll see this reduce [our support load](http://help.rubygems.org). Thanks for bearing with us if you've had to deal with `gem yank`'s behavior in the past.
