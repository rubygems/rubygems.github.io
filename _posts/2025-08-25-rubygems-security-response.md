---
title: How RubyGems.org Protects Our Community’s Critical OSS Infrastructure
layout: post
author: Marty Haught
author_email: marty@rubycentral.org
---

Recently, Socket.dev published [research](https://socket.dev/blog/60-malicious-ruby-gems-used-in-targeted-credential-theft-campaign) highlighting malicious gems
designed to steal social media credentials. We wanted to use this as an
opportunity to share more about how RubyGems.org security operates, how
we proactively handled this incident (and others), and the work our team
is doing each day to keep the ecosystem safe.

# How We Detect Malicious Gems

**RubyGems.org security uses a proactive and multi-layered approach:**

**1. Automated detection:** Every gem upload is analyzed using both
static and dynamic code analysis, including behavioral checks and
metadata review. Much of this capability comes from Mend.io’s
supply chain security tooling (originally built by our own Maciej
Mensfeld, a maintainer on the RubyGems team).

**2. Risk scoring:** Each package is given a score. Higher-risk gems
are escalated for manual review by a member of our security team.

**3. Retroactive scanning:** As detection techniques improve, older
packages are automatically rescanned, which allows us to catch
threats that may have slipped through in the past. (This is how we
found the threat actor that Socket.dev later investigated.)

**4. External sources:** We sometimes receive alerts from vulnerability
databases, industry partners, and cross-registry collaborations,
which help us identify patterns across ecosystems.

Through steps 1 - 3, our team detects the majority (roughly 70-80%) of
malicious packages before they are ever reported to us or the public.

# What Happens When We Flag a Gem

**Once a gem is flagged, we:**

**1. Verify:** A RubyGems security engineer reviews the code to confirm
malicious intent (about 95% of flagged packages prove to be
legitimate).

**2. Double-check:** When there’s any doubt, we seek a second opinion
within the team.

**3. Remove:** Confirmed malicious gems are removed via a standardized
process in our admin panel.

**4. Document:** Every action is logged with reasoning for
traceability.

**5. Protect further:** In some cases, we preemptively block suspicious
gem names (for example, ones mimicking company internals) to
prevent possible abuse.

# This Incident

**This is the timeline of the actions our team took concerning the
incident reported by Socket.dev:**

-   **July 20, 2025 --** Our systems flagged suspicious gems, and the
    team confirmed malicious credential-stealing behavior. We would
    like to specifically credit RubyGems maintainer Maciej Mensfeld
    for this.

-   **July 23--28 --** We removed nearly all of the affected packages
    and terminated the associated accounts. We would like to
    acknowledge again Maciej Mensfeld for his security work here, as
    well as Josef Šimánek, who provided a second opinion and helped
    with package removal.

-   **August 7 --** Socket.dev published their report and notified us of
    16 additional gems from related accounts, which we also removed.

In total, we removed all malicious packages from this threat actor,
including two not covered in the original report.

Socket.dev has also [published an updated accounting](https://socket.dev/blog/follow-up-on-malicious-ruby-gems-campaign) of this incident
after talking directly with our team and clarifying key details about
our response.

**It's also important to note:** this campaign involved a small number
of gems. Widely used and trusted packages were not affected.

# Community Reporting & Collaboration

We welcome and encourage researchers and community members to work with
us by reporting issues through these channels:

-   **Email:** You can also reach us at
    [security@rubygems.org](mailto:security@rubygems.org).

-   **Slack:** Join the [Bundler
    Slack](https://join.slack.com/t/bundler/shared_invite/zt-1rrsuuv3m-OmXKWQf8K6iSla4~F1DBjQ)
    to connect with the RubyGems.org team and community of committers
    and developers.

Once we receive reports, we acknowledge them, review them quickly, and
follow up with the person who made the report. We are grateful for every
contribution that helps keep RubyGems and the Ruby ecosystem secure.

# The Reality of Supply Chain Security

RubyGems.org is smaller than ecosystems like
[npm](https://github.com/npm) but malicious activity is
still a serious threat. On average, we remove about one malicious or
spam package per week, though that number can spike higher.

This work is resource-intensive. Most of our efforts are currently
supported by sponsors, including [Mend.io](http://mend.io)
and [Alpha-Omega](https://alpha-omega.dev/), but a
significant portion of time comes from contributions by volunteer
maintainers. Many of these maintainers have personally dedicated over a
decade to this critical work, driven by their passion and commitment to
keeping the Ruby ecosystem secure.

**If your company depends on RubyGems.org, consider supporting its
maintenance and security directly through our [RubyGems Supporter
Program](https://rubycentral.org/news/rubygems-org-funding-model-a-new-path-for-community-led-growth/).**
Community funding enables us to continue to invest in the people,
infrastructure, and security work that keep RubyGems safe and keep
RubyGems.org a community-led service.

# In Closing

**This recent incident shows our security systems working as intended:**
threats were detected, removed, and contained before they could cause
widespread harm.

Security in open source will always be a shared effort. We want to thank
Socket.dev for their research, as well as the broader community for
continuing to report issues.

You are welcome to reach out to us through the above channels if you
have any additional questions.

*RubyGems Security Team*
