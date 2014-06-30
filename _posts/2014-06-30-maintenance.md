---
title: Maintenance window on July 14th
layout: post
author: Sam Kottler
author_email: shk@linux.com
---

The RubyGems.org operations team has been hard at work over the past few weeks
putting together completely rebuilt infrastructure to support our growth and
scale. All our systems have been built from scratch using Chef and a variety of
other tools to help ensure they're rock solid.

As part of the migration to new systems, we'll have to take down the rails
application which runs RubyGems.org to migrate data from the old databases to
the new ones. We're planning on doing the switch over at 3:30 UTC on July 14th.
You can use [this tool](http://www.thetimezoneconverter.com/) find the time in
your local timezone. We expect the migration to take no more than 30 minutes.

So what does this all mean for you?

* `gem install` and `bundle install` will continue to work normally
* `gem push`, `gem yank`, and other commands which interact with the database
  will not work
* RubyGems.org will show a maintenance page if you go to the site in your
  browser

Thanks for your patience as we work to improve the stability and availability
of RubyGems.org.

As always, please feel free to [reach out](mailto:shk@linux.com) to the
RubyGems.org operations team with any issues. Thanks for using RubyGems.org!
