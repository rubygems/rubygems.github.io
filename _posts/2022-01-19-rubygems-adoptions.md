---
title: Rubygems Adoptions
layout: post
author: sonalkr132
author_email: aditya.prakash132@gmail.com
---

**Important note: this article describe a feature which has since been [removed from rubygems.org](https://github.com/rubygems/rubygems.org/pull/5356) (see the [corresponding RFC](https://github.com/rubygems/rfcs/blob/master/text/0017-remove-adoptions.md)).  It is kept for posterity.**

Original article:

----

No matter how near and dear a project was once to your heart, we all know that with time priorities change. You may no longer have the time or enthusiasm toward solving the issues of strangers on the internet as you once used to. It is reasonable for you to expect that the members of the community who have benefited from your work all this time will step up and carry your legacy (pun intended) forward. After all, it is in everyone's interest that a project used by the wider community doesn't get stalled.

We are trying to introduce a formal process to deal with scenarios where owners may be interested in handing over the stewardship of a gem to new members or just need more helping hands. [Github issues](https://github.com/bootstrap-ruby/bootstrap_form/issues/577), [Twitter posts](https://twitter.com/yugui/status/22490349662), Mailing lists, [Codeshelter](https://www.codeshelter.co/projects/), and [maintainer-wanted](https://github.com/pickhardt/maintainers-wanted) are great ways to reach out to the community. However, they may not have the visibility needed to find new maintainers quickly. RubyGems.org can be of great help here.

At the same time, we are also trying to allow users to request the reuse of an abandoned namespace by contacting the gem owner directly. We routinely receive [support tickets](https://help.rubygems.org/search?utf8=%E2%9C%93&q=abandoned&t=d&scope=all&category_id=&recommend=1) requesting access to an abandoned namespace that hasn't seen a release in quite a while. Finding the contact details of the owners can be a time-consuming process with limited scope for success. Recently we also decided that we will not show [user email publically by default](https://github.com/rubygems/rubygems.org/pull/2663), which users may have used in the past to contact owners. Using "Ownership requests", users will be able to submit such requests to gem owners using rubygems.org.

## Ownership calls
Gem owners will be able to create "Ownership calls" by clicking on the adoption link from the gem page sidebar. It will indicate that you are looking for new maintainers to join your project. You are encouraged to add details about your plan using the "note" field. For example, you should mention whether you intend to pass the bastion or you just need more helping hands.

<img src="/images/adoptions/adoptions-01.png" width="100%" />

All gems with ownership calls will be listed on [a site-wide index page](https://rubygems.org/ownership_calls).

<img src="/images/adoptions/adoptions-02.png" width="100%" />

Any registered user can apply for these ownership calls by creating an ownership request.

<img src="/images/adoptions/adoptions-03.png" width="100%" />

Gem owners will receive a batched email of ownership requests created within the last 24 hours. You can visit the gem adoption page to approve or close ownership requests. If approved, the requester will be added as the owner of the gem. Owners can choose to disable these email notifications.

<img src="/images/adoptions/adoptions-04.png" width="100%" />

## Ownership requests

As mentioned previously, users will also be able to submit an ownership request without a corresponding ownership call if the gem has not received any update in the last year and has fewer than 10k total downloads.

<img src="/images/adoptions/adoptions-05.png" width="100%" />

You are welcome to share contact details in your request. Only gem owners and the user who created the ownership request will be able to see the requests. Note that the owner can disable email notifications and may not receive your request.

## Enhancements

In the future, we may want to expose ownership calls information to users of the gem, which would print something like  "n gems are looking for maintainers" after bundle install (similar to [funding needed](https://github.com/rubygems/rubygems/pull/3390)). We may also want to support creating ownership calls using gemspec metadata.
Goes without saying that none of this will be of any help if the owners are unresponsive. We are having an ongoing discussion about how can we better deal with such cases on [this RFC](https://github.com/rubygems/rfcs/pull/33).

## Credits
The idea was originally proposed by [bf4](https://github.com/bf4) in this [RFC](https://github.com/rubygems/rubygems.org/issues/725). You can also check [this thread](https://groups.google.com/g/rubygems-org/c/niS5ZO9DNgk/m/SHUzS-8Qx68J) for the previous discussions. We tried to implement this with [vachhanihpavan](https://github.com/vachhanihpavan) during GSoC 2020. [RFC](https://github.com/rubygems/rfcs/pull/25) he created and his [initial work](https://github.com/vachhanihpavan/rubygems.org/pull/22) were pivotal in getting this shipped.
