---
title: Weak Cryptographic Standards Removal Notice
layout: post
author: David Radcliffe and André Arko
author_email: radcliffe.david@gmail.com
---

Security is one of our top concerns for RubyGems.org. It's a constant balance between providing easy access for all users and providing only the most secure ways of connecting. For the last few years, we've continued to allow several outdated, insecure, and weak cryptographic standards.

With this post, we are announcing the immediate deprecation and future disabling of TLSv1 and TLSv1.1 for all HTTPS connections to RubyGems.org. Both TLSv1 and TLSv1.1 will be disabled, and TLSv1.2 will be required, starting on **April 30th, 2018**.

As of February 2018, almost all HTTPS traffic to RubyGems.org already uses TLSv1.2. Based on current usage statistics, we expect this cutoff to impact less than 1.5% of requests made to RubyGems.org.

### Compatibility check and troubleshooting
We have created an [automatic SSL check](https://github.com/indirect/ruby-ssl-check/blob/master/check.rb) to tell you whether your Ruby will be able to connect to RubyGems.org after April 30. To run that script immediately, use this command: `$ curl -sL https://git.io/vQhWq | ruby`. If you’d like more details about the situation, including troubleshooting steps if you run into problems, check out the [Bundler and RubyGems TLS/SSL troubleshooting guide](http://bundler.io/v1.16/guides/rubygems_tls_ssl_troubleshooting_guide.html#why-am-i-seeing-read-server-hello-a).

### Known incompatible clients
Ruby linked against OpenSSL versions 1.0.0t or lower will not be able to connect to RubyGems.org. This is because support for TLSv1.2 was added in OpenSSL 1.0.1, released March 12, 2012. You can check the version of OpenSSL that your Ruby links against by running `ruby -ropenssl -e 'puts OpenSSL::OPENSSL_LIBRARY_VERSION'`.

JRuby running on JVM 6 or lower will not be able to connect to RubyGems.org. This is because the JVM added support for TLSv1.2 in Java 7, released July 28, 2011. You can check your Java version by running `java -version`, and looking for text like `java version "1.7.0_71"`. If you are running Java 7, the version number will start with 1.7.

### Further help

If you are unable to connect to RubyGems.org after April 30, 2018, please refer to the [additional help section of the guide](http://bundler.io/v1.16/guides/rubygems_tls_ssl_troubleshooting_guide.html#additional-help) for instructions on how to troubleshoot the issue, and how to open a ticket if necessary.
