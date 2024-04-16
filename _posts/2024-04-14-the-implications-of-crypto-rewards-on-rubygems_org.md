---
title: The Implications of Crypto Rewards on RubyGems.org
layout: post
author: Maciej Mensfeld
author_email: maciej@mensfeld.pl
---

Recently, at [RubyGems.org](https://rubygems.org/), we've encountered an unusual surge of empty packages, triggering an investigation by our team. This influx of pointless gems, referencing one of the reasonably popular packages, hinted at an attempt to manipulate the `tea.xyz` protocol. As with any potentially risky incident, we delved deeper into the motives and mechanics behind these submissions. This short article contains our investigation, the conclusions we've reached, and how, theoretically, individuals looking to abuse the system can distort the idea of rewarding OSS contributions.

## `tea.xyz` Trigger

The `tea.xyz` cryptocurrency creators claim that it came to life to enhance the sustainability of open-source software by rewarding projects based on their influence in the software ecosystem. It claims to utilize a 'Proof of Contribution' system, inspired by Google's PageRank, to measure the impact of various OSS packages.

## The Unintended Consequences

However, good intentions often come with challenges. At RubyGems.org, we began noticing a strange trend: the proliferation of empty gems. These gems weren't harmful per se but were peculiar in their consistent reference to a mildly popular OSS package.

## Investigating the Anomalies

As with any deviation in the ecosystem, we began an investigation. We considered multiple scenarios:

- A spam attack to overwhelm our system.
- A cover for malicious activities.
- A scheme to manipulate tea.xyz ranking system.

What struck us was that many of these gems were published under account with otherwise legitimate packages.

Digging deeper, we discovered that these accounts linked to a gem with over 100,000 downloads, which had its GitHub source changed after six years to include a `tea.yaml` file. This was a moment in our investigation that suggested the activities were aimed at exploiting the tea.xyz protocol rather than harming our ecosystem.

## Addressing the Issue

This realization led us to tighten our gem publishing limitations and increase monitoring for non-malicious but unexpected user behaviors. During the cleanup, we had minor, temporary delays in gem index updates. We also took strict action against accounts solely created for spamming, ensuring they didn't disrupt the community further.

## Conclusion and Appeal

While rewarding open-source contributions may seem noble, it can lead to unintended consequences, affecting RubyGems.org and other platforms, as detailed by this [web3isgoinggreat.com article](https://www.web3isgoinggreat.com/?id=teaxyz-spam). At RubyGems.org, we've encountered exploitation attempts that divert our resources and undermine trust and collaboration within our community. We remain committed to maintaining the integrity of RubyGems.org and supporting the broader open-source community. We urge others to refrain from exploitative practices like the one described in this incident report.
