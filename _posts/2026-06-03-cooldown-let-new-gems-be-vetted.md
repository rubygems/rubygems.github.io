---
title: "Cool down before you install: give new gems a few days to be vetted"
layout: post
author: Hiroshi SHIBATA
author_email: hsbt@ruby-lang.org
---

Most supply-chain attacks against RubyGems exploit a narrow window: an account is compromised, a malicious version ships, and any `bundle install` in the minutes that follow resolves straight to it. **Bundler 4.0.13** introduces **cooldown**, a time-based filter that refuses to resolve to a version until it has been public for at least *N* days. Releases too new to have been scrutinized are passed over in favor of ones that have aged past the window.

The feature was [designed in the open](https://github.com/ruby/rubygems/discussions/9113), drawing on [how other ecosystems approach the same problem](https://dev.to/hsbt/should-rubygemsbundler-have-a-cooldown-feature-40cp). It is opt-in, and complements rather than replaces existing defenses like mandatory 2FA and trusted publishing.

Cooldown reads the per-version `created_at` timestamp that rubygems.org's v2 compact index now serves. A version whose source does not expose `created_at`, such as older gem servers, historical entries from before the v2 cutover, or private registries still on the v1 format, is treated as outside the window and stays resolvable. Cooldown never blocks resolution silently; it only holds back versions it can prove are too new.

### Getting started

Cooldown ships in [Bundler 4.0.13]({% post_url 2026-06-03-4.0.13-released %}). If you are on an earlier release, update Bundler in place and pin the same version in your lockfile so the whole team moves together:

```console
$ gem update --system          # or: gem install bundler -v 4.0.13
$ bundle update --bundler=4.0.13
```

Then declare a small cooldown on your source in the `Gemfile`. This is the right setup for most teams: it is committed alongside your code, so every developer and CI run enforce the same window with no extra setup.

```ruby
source "https://rubygems.org", cooldown: 7

gem "rails"
gem "puma"
```

Cooldown takes effect during resolution. Run `bundle install` when there is no lockfile yet, or `bundle update` to re-resolve against it once a lockfile exists; an existing `Gemfile.lock` is always honored as-is, so adding a cooldown never disturbs versions you have already locked. Cooldown is unset by default, so a project without it keeps resolving to the newest versions.

That is all most projects need. The rest of this post covers the finer-grained controls.

### Other ways to set it

Beyond the per-source keyword, the `cooldown` setting applies one value across every source, scoped per-project, globally, or through the environment:

```console
$ bundle config set cooldown 7          # stored in .bundle/config for this project
$ bundle config set --global cooldown 7 # applies to every project for this user
$ BUNDLE_COOLDOWN=7 bundle install      # no lockfile yet, e.g. a fresh CI checkout
$ BUNDLE_COOLDOWN=7 bundle update       # re-resolve when a lockfile already exists
```

For a one-off run, pass `--cooldown` to `install`, `update`, `add`, or `outdated`:

```console
$ bundle install --cooldown 7
$ bundle update --cooldown 7
$ bundle add rails --cooldown 7
$ bundle outdated --cooldown 7
```

When more than one of these is present, they resolve in a fixed order of precedence: **command-line flag > configuration setting > per-source `cooldown:` in the `Gemfile`**. A `--cooldown` flag overrides the `cooldown` setting (`bundle config` or `BUNDLE_COOLDOWN`), which in turn overrides a `cooldown:` declared on a source. The cooldown value is always a **non-negative integer number of days**; a string, float, negative number, or array is rejected with an `InvalidOption` error.

### Mixing sources

Because the flag and the setting apply **uniformly to every source**, the per-source keyword is what you reach for when policy differs by registry, for instance cooling down public gems while trusting an internal registry you operate:

```ruby
source "https://rubygems.org", cooldown: 7

source "https://gems.internal.example.com", cooldown: 0 do
  gem "internal-tool"
end
```

`cooldown: 0` on the private source keeps it permanently exempt while public gems still age. Note that a command-line `--cooldown N` overrides every source for that run, including the exempt one.

### The escape hatch

Passing `0` disables cooldown for the run. It is the reliable way to reach the newest version on demand and to override a per-source or configured cooldown. This matters most when waiting is the wrong default: a fix lands for an actively exploited 0-day, or a vulnerability disclosure tells you to upgrade immediately. In those cases the freshest release is exactly the one you want, and `--cooldown 0` lets you take it without removing the policy for everyone else:

```console
$ bundle install --cooldown 0
$ BUNDLE_COOLDOWN=0 bundle update rails   # ignore any configured cooldown this time
```

You will reach for this when every candidate version of a gem is still inside the window. Rather than fall back to a too-new release, Bundler stops, reports how many versions the cooldown excluded, and points you at `--cooldown 0` to proceed.

### Seeing what is held back

`bundle outdated` is cooldown-aware. It annotates versions that are newer but still inside the window with the days left before they become resolvable, so "up to date" stays distinct from "deliberately waiting":

```console
$ bundle outdated --cooldown 7
Gem             Current   Latest                  Requested   Groups
aws-partitions  1.1251.0  1.1256.0 (cooldown 3d)  = 1.1251.0  default
```

### One layer among many

Cooldown is most useful as one part of the wider security investment happening on rubygems.org. The registry now validates gem contents at push time and checks logins against Have I Been Pwned so that compromised passwords cannot be reused, work described in [Protecting rubygems.org from the outside in]({% post_url 2026-04-09-protecting-rubygems-from-the-outside-in %}). A dedicated team is running [AI-assisted vulnerability scanning against the most critical gems]({% post_url 2026-04-29-scaling-rubys-defenses-with-ai %}), backed by Alpha Omega and Anthropic, and the direction of all of this is tracked on a [public roadmap]({% post_url 2026-04-15-rubygems-org-has-a-public-roadmap %}). Trusted publishing and mandatory 2FA already raise the bar for who can push a release in the first place.

Cooldown itself only works because rubygems.org publishes the per-version `created_at` timestamp through its v2 compact index. Each of these defenses covers a different gap, and they compound. Resolving your dependencies against rubygems.org is what puts all of them to work on your behalf, which makes it the safest default for Ruby projects.
