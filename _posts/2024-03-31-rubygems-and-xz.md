---
title: RubyGems is not vulnerable to the xz/liblzma backdoor
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

The past few days have seen the security world focused on the revelation of the [xz/liblzma backdoor](https://xeiaso.net/notes/2024/xz-vuln/). For more background, see [this early writeup of the issue](https://xeiaso.net/notes/2024/xz-vuln/), [this GitHub Gist](https://gist.github.com/thesamesam/223949d5a074ebc3dce9ee78baad9e27), [this detailed timeline](https://boehs.org/node/everything-i-know-about-the-xz-backdoor), and the official detail page for [CVE-2024-3094](https://nvd.nist.gov/vuln/detail/CVE-2024-3094). 

In response to the backdoor becoming public, we have done an internal audit not just of the software used to run RubyGems.org itself, but also every gem that has ever been published.

We are happy to report that RubyGems.org is not vulnerable to this issue. Furthermore, we are happy to confirm that no gem currently published on RubyGems.org contains the vulnerable `liblzma` library.

I would like to thank the rest of the RubyGems.org security team for their support in this investigation, and for their continued dedication to the security of the ecosystem. I would also like to thank AWS for their continued support of RubyGems security, including sponsoring me as [Ruby Central's security engineer in residence](https://rubycentral.org/news/ruby-central-welcomes-new-software-engineer-in-residence-sponsored-by-aws/), as well as funding the [rubygems-research](https://github.com/segiddins/rubygems-research) project. 

Thanks to the data consolidated in that project (available publicly at [research.rubygems.info](https://research.rubygems.info)), we were able to quickly confirm that no currently published gems contain any references to the vulnerable `liblzma` library.

### Technical Details

The RubyGems.org app containers, built [via Dockerfile](https://github.com/rubygems/rubygems.org/blob/master/Dockerfile), do not contain vulnerable versions of `liblzma` nor `xz`. Our images are based on [Alpine 3.18 stable](https://github.com/rubygems/rubygems.org/blob/master/Dockerfile#L5), which never contained or had access to the vulnerable library version. In addition, Alpine Linux uses the `musl` libc, which does not contain the (glibc-only) [IFUNC mechanism](https://sourceware.org/glibc/wiki/GNU_IFUNC) used to activate the backdoor.

Our process for building the containers deployed to production is public, run via GitHub Actions after every commit to the public RubyGems.org codebase. The [latest container build job logs](https://github.com/rubygems/rubygems.org/actions/runs/8498544592/job/23278360812) can be used to reproduce the build by any interested parties.

As verified by running `find / -name '*lzma*'` in our built containers, we depend only on version 5.4.3 and not on the vulnerable versions 5.6.0 or 5.6.1.

<details>
<summary>Full command output</summary>
<pre><code>$ find / -name '*lzma*'
/usr/bin/lzma
/usr/bin/unlzma
/usr/lib/liblzma.so.5
/usr/lib/liblzma.so.5.4.3
/app/vendor/ruby/3.3.0/gems/bindata-2.5.0/lib/bindata/transform/lzma.rb

$ find / -name '*xz*'
/sys/module/xz_dec
/usr/bin/unxz
/usr/bin/xzcat
/app/vendor/ruby/3.3.0/gems/bindata-2.5.0/lib/bindata/transform/xz.rb
</code></pre>
</details>
<p></p>

As of March 31st 2024, the only gem on RubyGems.org that contains `liblzma` is the [gem also named liblzma](https://rubygems.org/gems/liblzma). That gem contains only versions 0.2 and 0.3 of the library, which do not contain the backdoor. There are zero gems that contain the `xz` command-line tool.

<details>
<summary>Full command output</summary>
<pre><code>
irb(main):005> attrs = ['version_data_entries.full_name', 'rubygems.name',  'versions.number', 'versions.platform', 'versions.uploaded_at']
=> ["version_data_entries.full_name", "rubygems.name", "versions.number", "versions.platform", "versions.uploaded_at"]
irb(main):006> VersionDataEntry.where('version_data_entries.name LIKE ?', 'liblzma%.so').joins(:version, :rubygem).pluck(*attrs).map { |p| attrs.zip(p).to_h }
=>
[{"version_data_entries.full_name"=>"lib/liblzma.so", "rubygems.name"=>"liblzma", "versions.number"=>"0.2", "versions.platform"=>"mingw32", "versions.uploaded_at"=>Sat, 31 Mar 2012 05:57:47.212691000 UTC +00:00},
 {"version_data_entries.full_name"=>"lib/1.9.1/liblzma.so",
  "rubygems.name"=>"liblzma",
  "versions.number"=>"0.3",
  "versions.platform"=>"x86-mingw32",
  "versions.uploaded_at"=>Thu, 21 Feb 2013 13:21:51.961608000 UTC +00:00},
 {"version_data_entries.full_name"=>"lib/2.0.0/liblzma.so",
  "rubygems.name"=>"liblzma",
  "versions.number"=>"0.3",
  "versions.platform"=>"x86-mingw32",
  "versions.uploaded_at"=>Thu, 21 Feb 2013 13:21:51.961608000 UTC +00:00}]

irb(main):008> VersionDataEntry.where('version_data_entries.name = ?', 'xz').joins(:version, :rubygem).pluck(*attrs).map { |p| attrs.zip(p).to_h }
=> []
</code></pre>
</details>
