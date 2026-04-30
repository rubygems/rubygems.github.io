---
title: "Scaling Ruby's defenses with AI"
layout: post
author: Colby Swandale
author_email: colby@rubygems.org
---

On April 23rd, we submitted a vulnerability report to the [Nokogiri](https://github.com/sparklemotion/nokogiri) maintainers. It was the first one our team has filed using AI-assisted scanning. The maintainers accepted the report and published it as [GHSA-c4rq-3m3g-8wgx](https://github.com/sparklemotion/nokogiri/security/advisories/GHSA-c4rq-3m3g-8wgx).

The same week, news broke that Mythos, Anthropic's most capable security model, had been accessed by unauthorized users through a third-party vendor. According to Anthropic, Mythos has identified thousands of zero-day vulnerabilities across every major operating system and web browser, [including a 17-year-old remote code execution flaw in FreeBSD and a 27-year-old bug in OpenBSD](https://red.anthropic.com/2026/mythos-preview/). Two stories on the same shift, one from each side of it. The capability gap between attackers and defenders just widened, and most open source ecosystems have nothing to close it with.

Anthropic is bringing some open source maintainers into [Project Glasswing](https://www.anthropic.com/glasswing), but Ruby is not in yet. We cannot afford to be on the wrong side of that gap.

We have been working on the defender side. [RubyGems](https://rubygems.org) hosts roughly 190,000 gems, and you cannot audit them all. The [OpenSSF Criticality Score](https://openssf.org/projects/criticality-score/) lets us focus on the gems whose compromise would cascade through the rest of the ecosystem. We're looking at those first.

We are using Claude Opus 4.7 to surface candidate vulnerabilities. A human reviewer triages, verifies, and writes up every finding before anything reaches a maintainer. None of this work happens without funding. [Alpha Omega](https://alpha-omega.dev/), a project of the [OpenSSF](https://openssf.org) at the Linux Foundation, is [sponsoring this work](https://www.linuxfoundation.org/press/linux-foundation-announces-12.5-million-in-grant-funding-from-leading-organizations-to-advance-open-source-security).

The bug we found in Nokogiri is a regex backtracking pathology in the CSS tokenizer. A short, unterminated attribute selector could hang the Ruby process indefinitely because the tokenizer's regex tries to interpret each escape sequence two different ways and explores an exponential number of possibilities before giving up. Every public Nokogiri CSS entry point routes through this tokenizer. Most large consumers (Rails, Capybara, Loofah) pass developer-written selectors and were unaffected. But any application that lets user input flow into a CSS selector (scrapers, feed readers) was exposed to an unauthenticated denial-of-service via a payload small enough to fit in a request parameter.

ReDoS bugs are a sweet spot for model-assisted finding. They are hard to spot by reading code and easy to verify by running them. Opus 4.7 flagged the ambiguous STRING rule in the CSS tokenizer and proposed a payload to exercise it: an unterminated attribute selector followed by a run of `\a` escape sequences. I ran it. Parsing took 6ms at fifteen escape sequences and timed out past five seconds at twenty-four. Each added escape roughly quadrupled the runtime, which is what catastrophic backtracking looks like. I wrote up the report. The Nokogiri maintainers accepted it, patched the bug, and published the advisory. The fix is in.

Open source maintainers are already drowning in AI-generated security reports that don't hold up. Each one wastes a maintainer's day and makes the next legitimate report harder to act on. We are not going to be part of that.

Opus 4.7 is the most capable model we have access to right now, and it produced a real advisory in one of the most widely used gems in the ecosystem. We are working with Anthropic to gain access to Mythos through Project Glasswing. We did not need to wait for it to find this bug, and we will not wait to find the next one.

[RubyCentral](https://rubycentral.org) is hiring a small team of security engineers to scale this work. The job is to run AI-assisted reviews against the most critical gems on rubygems.org, verify findings, and earn the kind of relationship with maintainers where an advisory from us is taken seriously and acted on quickly. If you have done open source security work in any ecosystem and want to do it at scale, we would like to hear from you. Please reach out to [oss@rubycentral.org](mailto:oss@rubycentral.org).

We submitted our first report on April 23rd. There are 190,000 more gems to look at.

