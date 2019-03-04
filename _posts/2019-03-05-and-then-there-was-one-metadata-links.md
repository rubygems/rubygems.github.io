---
title: Removing the edit linkset form
layout: post
author: sonalkr132
---
Say you have built a new futuristic website for your gem and now you want to update its homepage link on our site. *What happened to the linkset edit link?* is something you may find yourself asking when you find out that the edit link is no more (Press F?). Before more of you start [questioning your sanity](https://github.com/rubygems/rubygems.org/issues/1899#issue-406110693) over it, let us assure you that it is still the same timeline you have always lived in. While we don't have portals yet, you can now set your gem page sidebar links per version, so that's something.

It started with `@fwolfst` [suggesting](https://github.com/rubygems/rubygems/issues/1007) that we should use the gemspec to set the source code link, and all we said back was:
> submitting a pull request with this change and a test will get a review, though.

4 years to deliver a feature may sound neither stirring nor impressive, until you learn about the gears we had to grease to make it possible. We [exposed](https://github.com/rubygems/rubygems.org/pull/858) the metadata field from the API, [added](https://github.com/rubygems/rubygems.org/issues/718#issuecomment-69181157) linkset and changelog URLs to the bandwagon, [backfilled](https://github.com/rubygems/rubygems.org/pull/895) metadata for the older versions and even [reverted](https://github.com/rubygems/rubygems.org/commit/a72bc3b6506ffbdb5aeb1ec3f23d88c69ce05851) a revert of a commit. It was so nice of `@kbrock` to keep [his PR](https://github.com/rubygems/rubygems.org/pull/1234) updated while we worked on other pressing issues. As of now, if you need to update any of the sidebar links previously editable from the UI, you would have to set a few URI attributes in `spec.metadata`. Please, check our [guides](https://guides.rubygems.org/specification-reference/#metadata) for the details of the requirements.
<p align="center"> <img src="https://gist.github.com/sonalkr132/8608c421ae1cf79623567a05a3bffaf0/raw/40105759f41b8ed4b8173d2e5537633ec50a3cad/immutable-awesomeness-by-john-willis-and-josh-corman-3-638.jpg" alt="immutable"> </p>

On [the versions page](https://rubygems.org/gems/rake/versions/12.3.1) we expect that the fields like dependencies, require ruby version and SHA256 checksum are all for the version we are looking at. Most of what we see on the page have always come from the various attributes of the gemspec file. Some noteworthy exceptions were the wiki, code, mail, bug tracker and documentation links show on the right sidebar. You use to optionally set them using the edit `linkset` form and the model *belongs_to* `rubygems` (not `versions`). While, URI for the wiki, code and bug tracker generally don't change over versions, documentation and changelog links often need to be updated with each new version. In Rubygems.org, we like to consider versions immutable after you have pushed them to our servers. Although, we had the alternative of updating the linkset relationship to `belongs_to: versions`, it doesn't fit well with our assumption of immutable releases.

Removing the UI form makes gemspec only source of truth for data for the links and gives gem publishers more control over them. Those releasing gems using a CI build would find it more convenient to use the gem specification than the UI. Further, Rubygems.org repo got to shed [more than 200 lines of code](https://github.com/rubygems/rubygems.org/pull/1815) by removing the form. Enough real estate for two ruby classes according to [some](https://youtu.be/npOGOmkxuio?t=495).

We understand that there are times when you need to get things done. If you are genuinely in a situation where you can't release a new version to update those links, please feel free to file [a support ticket](https://help.rubygems.org/discussion/new) and for the time being, we will update it for you. Having said that, we also hope that you feel metadata links are a useful addition and you will use them in your next versions release. In case you are still undecided, possibly a montage of *back of the book style* quotes will sell it better.
<br/>

<p align="center">
  <img src="https://gist.github.com/sonalkr132/8608c421ae1cf79623567a05a3bffaf0/raw/7be7798e5e4d2aee99b08a3eaf9268bd98ea20c4/metadata-quotes.gif"/>
  <small><a href="https://gist.github.com/sonalkr132/8608c421ae1cf79623567a05a3bffaf0#file-quote-links-md">source of quotes</a></small>
</p>
