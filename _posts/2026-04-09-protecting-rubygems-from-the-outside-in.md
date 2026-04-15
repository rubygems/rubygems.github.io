---
title: "Protecting rubygems.org from the outside in: DoS prevention and compromised passwords"
layout: post
author: Colby Swandale
author_email: colby@rubygems.org
---

Every gem published to [rubygems.org](https://rubygems.org) ends up running on someone's computer. It's up to [rubygems.org](https://rubygems.org) to ensure that each gem contains what it claims, that its metadata is well-formed, and that the person who pushed it is who they say they are.

We've been chipping away at that. Over the past few months, we shipped two changes that tighten [rubygems.org](https://rubygems.org)'s defences at very different layers: stronger validation of gem contents at push time, and integration with Have I Been Pwned to catch compromised passwords at login.

## What [rubygems.org](https://rubygems.org) checks when you gem push

A RubyGem is actually just a regular tar file, which contains 3 sections: the code, metadata, and checksums, which you can inspect for yourself.

```bash
$ gem fetch rails
Fetching rails-8.1.3.gem
Downloaded rails-8.1.3

$ tar -xvf rails-8.1.3.gem
x metadata.gz
x data.tar.gz
x checksums.yaml.gz
```

 [rubygems.org](https://rubygems.org) closely inspects all 3 of these files when a gem is published, but the ones we're looking at are the `metadata` and `checksums.yaml`.

 The `checksums.yaml` certifies the integrity hash of the `data.tar.gz` and `metadata.gz` with a sha256 after `gem build`. If someone tampers with the code directly, the checksums won't match and [rubygems.org](https://rubygems.org) rejects the push immediately. Checksums are the easy part.

 `metadata.gz` has the serialised YAML of the gem metadata, generated from the gemspec during `gem build`.

 ```yaml
 --- !ruby/object:Gem::Specification
name: rails
version: !ruby/object:Gem::Version
  version: 8.1.3
platform: ruby
authors:
- David Heinemeier Hansson
bindir: bin
cert_chain: []
date: 1980-01-02 00:00:00.000000000 Z
dependencies:
- !ruby/object:Gem::Dependency
  name: activesupport
  requirement: !ruby/object:Gem::Requirement
    requirements:
    - - '='
      - !ruby/object:Gem::Version
        version: 8.1.3
  type: :runtime
  prerelease: false
  version_requirements: !ruby/object:Gem::Requirement
    requirements:
    - - '='
      - !ruby/object:Gem::Version
        version: 8.1.3
...
```

When a gem is pushed, [rubygems.org](https://rubygems.org) deserialises the YAML and reconstructs a `Gem::Specification` object from it. It then validates the result, checking that the name and version are well-formed, that the declared dependencies are valid, that the person pushing is authorised. This is where gem validation gets complex.

## Exploiting the validation process

This process of reconstructing the gemspec YAML into a `Gem::Specification` object invites a class of exploitation called [insecure deserialisation](https://owasp.org/www-community/vulnerabilities/Insecure_Deserialization) that would allow a crafted YAML to attack [rubygems.org](https://rubygems.org).

This isn't a theoretical concern. In 2017, a [security researcher discovered](https://blog.rubygems.org/2017/10/09/unsafe-object-deserialization-vulnerability.html) that rubygems.org was using a bare `YAML.load` to deserialise checksums inside gem files, a vulnerability that had potentially been present since 2012. The team patched it within hours by switching to `YAML.safe_load`, which restricts which Ruby objects can be instantiated from a document. But that only narrowed the problem. Even with a precise allowlist of classes and objects, malicious gems could still exploit the deserialisation process to exhaust memory or CPU before any validation even ran, causing rubygems.org servers to stop working.

## Validating gems without `Gem::Specification`

The fix was to stop trusting the YAML to tell [rubygems.org](https://rubygems.org) what to do with itself.

This was largely [Aaron Patterson's](https://bsky.app/profile/tenderlove.dev) (tenderlove) work. He designed and built the AST-based approach from the ground up. Rather than handing the document to Ruby and letting it materialise objects, we traverse the parsed tree ourselves and extract only the values we expect to find. The YAML never gets to decide what gets instantiated. We also validate the structure against a schema derived from the real thing: Aaron audited all 180,000 gems published on [rubygems.org](https://rubygems.org) and built a tool to validate them against it. Some very old gems turned up edge cases we deliberately chose not to handle. If those gems were pushed today, they'd be rejected, but these gems that haven't seen a new version in years almost certainly never will be. His contribution here is greatly appreciated.

The result is that an entire class of exploitation (using malformed metadata to attack the push endpoint itself) is no longer possible. The attack surface doesn't exist anymore.

## Compromised passwords and the supply chain

Gem validation protects [rubygems.org](https://rubygems.org) from what gets pushed. But there's a separate persistent threat: who's doing the pushing.

Package registries are high-value targets for credential stuffing. If an attacker gets hold of a developer's reused password from an unrelated breach, they can log in as that developer and push a malicious version of a legitimate gem. The code is signed by a trusted account. The checksums match. Everything looks right, because as far as [rubygems.org](https://rubygems.org) can tell, it is.

[Have I Been Pwned](https://haveibeenpwned.com) (HIBP) is a service run by security researcher [Troy Hunt](https://www.troyhunt.com) that tracks passwords exposed in known data breaches. At the time of writing, it contains over 10 billion compromised passwords. [rubygems.org](https://rubygems.org) now checks against it at login, registration and password resets.

## Checking passwords without exposing them

The obvious concern with checking your password against a third-party service is privacy. [rubygems.org](https://rubygems.org) never sends your password, or even a full hash of it, to HIBP.

Instead, it uses [HIBP's k-anonymity model](https://www.troyhunt.com/understanding-have-i-been-pwneds-use-of-sha-1-and-k-anonymity/). When you log in, [rubygems.org](https://rubygems.org) computes a SHA-1 hash of your password and sends only the first 5 characters of that hash to the HIBP API. HIBP returns a list of all hashed passwords in its database that start with those 5 characters. [rubygems.org](https://rubygems.org) then checks that list locally. Your full password hash never leaves our servers.

If your password appears in the results, [rubygems.org](https://rubygems.org) blocks the session and shows a warning explaining your password has been found in a known breach. You'll need to reset your password before you can log in again.

Since shipping, it's detected 1,166 accounts with compromised passwords. Because rubygems.org hashes passwords with bcrypt, we've never been able to inspect the strength of passwords in the database directly. This is the first real window into how widespread the problem is, and a way to start course correcting it.

## Shipping the work

[rubygems.org](https://rubygems.org) serves almost a billion gem downloads every single day. Every Ruby application, from side projects to the infrastructure powering large parts of the internet, depends on the integrity of what we distribute.

These two changes address the supply chain at different layers: one at the moment a gem is built and pushed, the other at the moment a person logs in. Neither is glamorous. Validating YAML ASTs and hashing password prefixes don't ship in a splash announcement. But this is the work: closing specific, real attack vectors before someone finds them for you. If you want to follow along or get involved, everything happens in the open at [github.com/rubygems/rubygems.org](https://github.com/rubygems/rubygems.org).
