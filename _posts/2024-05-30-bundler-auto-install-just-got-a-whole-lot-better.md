---
title: Bundler Auto-Install Just Got A Whole Lot Better
layout: post
author: Ngan Pham
author_email: nganpham@gmail.com
---

_The RubyGems Team is happy to share this post from our colleague Ngan Pham, Principle Software Engineer @ Gusto. Thank you, Ngan!_

Working in a large monolith with many engineers, you never fail to get a flurry of changes everytime you pull from `main`.
Then you have the typical ritual of running `bundle install` and, if you're on a Rails application, `rails db:prepare`.
Sometimes, you forget to run `bundle install` and get this message:

```
Could not find X-1.2.3 in locally installed gems
Run `bundle install` to install missing gems.
```

As of Bundler 2.5.10, you can now enable the `auto_install` config to have Bundler automatically install your bundle on demand.
Simply set it in your project (or globally) with:

```
bundle config auto_install true
# or
bundle config --global auto_install true
```

Auto-install is not a new concept. Commands like `bundle (show | binstubs | outdated | exec | open | console | license | clean)` already benefited from the `auto_install` config.

However, the [recent enhancement](https://github.com/rubygems/rubygems/pull/6561) by [@technicalpickles](https://github.com/technicalpickles) made it work with anything that uses `require "bundler/setup"`. This means even binstubs (which use `require "bundler/setup"` by default) will now _just work_.

It's a small change but it results in a big quality of life improvement. Try it out!

---

_If you would like to share a post about something you love about Bundler or RubyGems on the RubyGems.org blog, we encouraged you to [contribute here on GitHub](https://github.com/rubygems/rubygems.github.io) or talk to us on the [Bundler Slack](https://join.slack.com/t/bundler/shared_invite/zt-1rrsuuv3m-OmXKWQf8K6iSla4~F1DBjQ)._