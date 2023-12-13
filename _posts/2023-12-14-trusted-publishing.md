---
title: Announcing Trusted Publishing on RubyGems.org
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

Hi all!

I'm excited to share a new feature that will help make RubyGems.org more secure, as well as making it easier to automate gem publishing. We're calling it [Trusted Publishing](https://guides.rubygems.org/trusted-publishing/).

## Backstory

Over the past few years, we've [increased the minimum multi-factor authentication (MFA) requirements](/2022/08/15/requiring-mfa-on-popular-gems) for accounts that own popular gems. We highly encourage requiring MFA for all interactions with RubyGems.org, including through the API. This is part of our strategy to make Ruby’s supply chain more secure, specifically by combatting account takeovers — the second most common software supply chain attack.

On the flip side, we want to encourage gem authors to push their gems from trusted environments, based on the state of public repositories. For many, that means using GitHub Actions (as a CI/CD platform) for gems with repos hosted on GitHub.com.

Until now, the desire to require MFA everywhere and to encourage automated gem pushing have been in opposition. Setting up automated publishing required disabling MFA on an API key that is stored as a long-lived secret on GitHub Actions. Even worse, given it was a clunky, multi-step process, many gem authors simply pushed gems from their laptops.

## Trusted Publishing

Enter the subject of today's announcement: [Trusted Publishing](https://guides.rubygems.org/trusted-publishing/). Before getting into the details, I'd like to quickly thank our friends over at [PyPi](https://pypi.org/) for blazing this trail, providing helpful guidance, and writing some pretty great [docs](https://docs.pypi.org/trusted-publishers/).

Trusted Publishing is a term for using OpenID Connect (OIDC) to exchange short-lived identity tokens between a trusted third-party service and RubyGems.org. This allows obtaining short-lived API tokens in an automated environment (such as CI) without having to store long-lived API tokens or username/password credentials.

After [filling out four form fields for your gem](https://guides.rubygems.org/trusted-publishing/adding-a-publisher/) (repo owner, repo name, GitHub Actions workflow file name, and optional GitHub Environment), you'll be able to [automate publishing via GitHub Actions with a short, simple, and copy/pastable workflow](https://guides.rubygems.org/trusted-publishing/releasing-gems/).

```yaml
jobs:
  push:
    runs-on: ubuntu-latest

    permissions:
      contents: write
      id-token: write

    steps:
      # Set up
      - uses: actions/checkout@v4
      - name: Set up Ruby
        uses: ruby/setup-ruby@v1
        with:
          bundler-cache: true
          ruby-version: ruby

      # Release
      - uses: rubygems/release-gem@v1
```

## Benefits

This mechanism has significant security & usability advantages compared to traditional authentication mechanisms:

- **Usability**: trusted publishing does not require manually creating & storing API tokens from RubyGems.org. The only manual step is configuring the trusted publisher on RubyGems.org.
- **Security**: RubyGems.org’s normal API tokens are long-lived, meaning an attacker who obtains one can use it indefinitely. Trusted publishing tokens are short-lived, meaning they can only be used for a short period of time.
- **Trust**: pushing is done via a trusted environment, in a way that is transparent to users of a gem, leading to higher confidence that what is released matches what is in the repo.

## What's Next

- Support for other trusted publishing platforms
- A [comprehensive GitHub Actions workflow](https://github.com/rubygems/rubygems.org/issues/4286) that handles building the gem, generating provenance, signing it using sigstore, pushing it

Stay tuned!

This work was made possible thanks to support from the Sovereign Tech Fund, as well as AWS sponsoring my work now as the Security Engineer in Residence.
