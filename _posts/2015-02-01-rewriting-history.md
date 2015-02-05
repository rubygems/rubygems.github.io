---
title: Writing history, actually re-writing it.
layout: post
author: Arthur Nogueira Neves
author_email: arthurnn@gmail.com
---

# Problem
RubyGems.org was getting out of hand, not in terms of code, but the git repository was way too big. Everytime someone wanted to clone the repo, it would take a long time, as the repo was over 500MB. The code itself is not big at all, but we need to vendor all the gems we use.
You might be wondering why we need to vendor the RubyGems.org gem dependencies. Most projects can simply install gems from RubyGems.org when they are deployed. But RubyGems.org itself might have a critical bug that causes it to be unavailable. The only way to deploy a fix to such a bug is to ensure the RubyGems.org codebase does not depend on the RubyGems.org service being available.
Vendoring more than 100 gems cost space, also everytime a new gem is updated, the old versions live forever in the history. Git is distruibuted source control, and when you clone the repo you clone all branches, tags and history attached to them. That said, the repository would just grow and became harder and harder to be cloned.

([See GitHub issue](https://github.com/rubygems/rubygems.org/issues/610))

# Alternative solution
Running `git clone --depth=1` would be an easier solution. However the problem about this is that everyone that clones the repo would have to know about the `depth` flag. Another problem about it, is that you would not clone the history locally, so searches or things like `git-blame` would not work.

# Solution
Create a separate `vendor/cache` folder in a another git repository, and add that as a git submodule. If `vendor/cache` folder is not part of the main repo, history on that folder would not be tracked by the main repo. Therefore the RubyGems.org repository would not grow immensely with every gem update.

However that would not solve the problem of having a 600MB repository. In order to fix that, we would have to rewrite history of the repository to remove all the vendored files from history. And that's exactly what we did. As we were rewriting history we also decided to remove a few other big folders and files from the history:

* server/rubygems.html
* rubygems.txt
* server/rubygems.txt
* vendor/bundler_gems
* vendor/gems
* vendor/rails
* vendor/plugins

And lastly we moved `vendor/cache` out of the history to [another repository](https://github.com/rubygems/rubygems.org-vendor)

# Why?
RubyGems.org is an open source project, and contributions are always welcome, so a small and faster repository is key to make the project more approachable for the community.

# Final results
<pre>
<code class="bash">
$ git clone git@github.com:rubygems/rubygems.org-backup.git
$ du -skh .
536M    .

$ git clone git@github.com:rubygems/rubygems.org.git
$ du -skh .
11M    .
</code>
</pre>

# Impact on development

## Everyone must rebase
Everyone that has a PR to `rubygems/rubygems.org`, must rebase against the new history. Locally, this means that clones of `rubygems/rubygems.org` can either delete and clone it again, or just `git fetch --all; git pull --rebase`.

## Installing dependencies
Nothing changed, still `bundle install` will do its job.

## Updating or adding a new gem
Just add the gem to `Gemfile` or run `bundle update gem_name`, and send a PR with changes to `Gemfile` and `Gemfile.lock` only. There is no need to update the `vendor/cache` folder anymore, or to send a PR to the vendor repo. The RubyGems team will make sure to update the vendor folder.
