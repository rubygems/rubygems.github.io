---
title: Announcing RubyGems.org Stats
layout: post
author: André Arko and Sid Krishnan
author_email: andre@arko.net
---

Ever since it was first released, the Bundler team has wanted to know more about the developers out there using our code. What versions of Ruby are still being actively used? What versions of RubyGems is it safe to stop supporting? Which operating systems should we focus on testing?

It’s been almost 10 years since that first release, but today the RubyGems and Bundler team is excited to announce that everyone can see the answers to these questions at [stats.rubygems.org](https://stats.rubygems.org). It’s been a long journey from [the first commit in 2013](https://github.com/rubygems/bundler/commit/7a95b0cbbcacbd899bd108319fffb57c327ad6f7) to the working website today, so I’ll try to stick to the highlights.

After reading reports like [iOS device and OS version stats from Instapaper](https://marco.org/2011/08/13/instapaper-ios-device-and-version-stats-update) and [Planet Argon's long-running Ruby on Rails community survey](https://blog.planetargon.com/entries/the-2018-ruby-on-rails-survey), I was inspired to try to collect similar stats about Bundler users. Knowing that Bundler already had to to send some information to RubyGems.org during every `bundle install`, I started there. Sending Bundler, RubyGems, and Ruby version information in the User-Agent header meant that the versions we wanted to track would be available in the RubyGems.org server logs.

Merely 2 or 3 years later, I was able to ensure that a redacted copy of the RubyGems.org server logs would be saved to storage sponsored by [Ruby Together](https://rubytogether.org). Then, I just needed to figure out how to take the files on S3 and turn them into useful daily numbers.

Unfortunately, RubyGems.org is an extremely popular website, and it produces a truly stupendous amount of logs: something on the order of 500GB, every single day. Downloading those logs, parsing them to get out the user agent, trying to remove duplicates, and then saving the results, becomes an extremely hard job when you need to be able to do it cheaply, every day, and faster than 20GB/hour.

It took several more years, and [lots of experimentation with Ruby, Python, Apache Spark, AWS Glue, Rust, and Amazon Lambda](https://andre.arko.net/2018/10/25/parsing-logs-230x-faster-with-rust/), but I eventually managed to create a system that could reliably process the RubyGems.org logs firehose and provide daily numbers in the second half of 2018.

At that point, André started work on a webapp that could display that data, but then completely ran out of spare cycles to work on the project for all of 2019. Fortunately, that’s when [@sidk](https://github.com/sidk) stepped in, heroically working to complete and expand the webapp into the site we have today. Here's a summary from Sid of how the final site is set up: 

<hr>

The display webapp is comprised of the following components:

- A daily rake task, to download data from S3 into Postgres. Data is uploaded to S3 by kirby (the log parser) after it processes log data.
- A JSON API, with the following endpoints:
    * /versions/{thing}
    * /comparison/{thing1}/{thing2}

In the API, each `thing` is one of: ruby, bundler, rubygems, platform, or ci.

On the frontend, we currently use [ApexCharts](https://apexcharts.com). Every graph on the page is a partial that makes a request to the server for version or comparison data and then instantiates an ApexChart. 

<hr>

In the end, things worked out pretty well, and we’re very excited and proud to make such a useful resource available to the Ruby community. We’re excited to work with all of you to keep making both the [log parser](https://github.com/rubytogether/kirby) and [display webapp](https://github.com/rubytogether/ecosystem) even better.

Check out [stats.rubygems.org](https://stats.rubygems.org) and tell us what you think!
