---
title: An Update to RubyGems MFA Levels
layout: post
author: Kevin Lin
author_email: kevin.lin@shopify.com
---

# Summary

The `UI only` multi-factor authentication level is being removed.
Users who remain on the UI only MFA level will be migrated to the UI and gem signin level on September 22nd, 2022.

# Why is this happening?

In essence, the `UI and gem signin` level is the same as the `UI only` level, but it also requires that the `gem signin` command is verified with multi-factor authentication.
This ensures that accounts with MFA protection are not impacted by compromised passwords.

# What is going to change?
After the migration, users who were on the `UI only` level will need to enter a one-time password when using `gem signin`. For everyone else, nothing will change.

If you are using `gem signin` in automated builds, we recommend that you migrate to using a pre-generated API key for authentication. You can either set the `API_KEY` environment variable to the value of your API key or write the key to `credentials` file:

`echo "https://rubygems.org: YOUR_API_KEY" > ~/.gem/credentials`

Check out the [guides](https://guides.rubygems.org/setting-up-multifactor-authentication/#authentication-levels) for more information on RubyGems MFA levels.
