---
title: Policy change: Yank will now delete the .gem file
layout: post
author: Arthur Nogueira Neves
author_email: arthurnn@gmail.com
---

The gem yank action, is a command gem authors can call to yank a version out of the rubygems index. There was some expectation that the yank command would also delete the .gem file, however that was not the case, and people would just open a request on help.rubygems.org to actually delete the gem. For a while we only deleted gems manually, using a script, but that was getting out of hand, as the script had to be ran manually.
It is time to make a change. Now yank commands will actually do what you expect them to do, which is a delete from index and a delete of the .gem file from our s3 bucket.
The command will still be called `yank` for backwards compatiblity, but all the rubygem clients will have that new behaviour as this is a server side change.
With this change we hope to meet expecations better and reduce our support queue.
