---
title: RubyGems & xz
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

The past few days have seen the security world focused on the revelation of the [xy/liblzma backdoor](https://xeiaso.net/notes/2024/xz-vuln/), which has been assigned [CVE-2024-3094](https://nvd.nist.gov/vuln/detail/CVE-2024-3094).

In response to this, I have undertaken an exposure assesment of the vulnerability on RubyGems.org and the broader RubyGems ecosystem.
I am happy to report that RubyGems.org is not vulnerable to this issue, as we use a `musl` based operating system (Alpine) for our RubyGems.org containers.

Furthermore, I am happy to confirm that there is no evidence that gems in the RubyGems ecosystem have been used an attack vector for this vulnerability.
Thanks to the data consolidated in the [rubygems-research](https://github.com/segiddins/rubygems-research) project (available publicly at [research.rubygems.info](https://research.rubygems.info)), we can confirm that no gems contain any references to the vulnerable `liblzma` library.

I would like to thank the rest of the RubyGems.org security team for their support in this investigation, and for their continued dedication to the security of the ecosystem. I would also like to thank AWS for their continued support of RubyGems security, sponsoring myself as [Ruby Central's security engineer in residence](https://rubycentral.org/news/ruby-central-welcomes-new-software-engineer-in-residence-sponsored-by-aws/), and funding the development of the [rubygems-research](https://github.com/segiddins/rubygems-research) project, which proved instrumental in confirming the absence of `liblzma` across all million and a half gem versions hosted on RubyGems.org.

## Nitty Gritty Details

RubyGems.org app containers do not contain any vulnerable versions of `liblzma` nor `xz` (in addition to the fact that they run Alpine and thus were not vulnerable to the backdoor).

```
web-7b88594bd9-6g5nn:/app find / -name '*lzma*'
/usr/bin/lzma
/usr/bin/unlzma
/usr/lib/liblzma.so.5
/usr/lib/liblzma.so.5.4.3
/app/vendor/ruby/3.3.0/gems/bindata-2.5.0/lib/bindata/transform/lzma.rb
```

```
web-7b88594bd9-6g5nn:/app# find / -name '*xz*'
/sys/module/xz_dec
/usr/bin/unxz
/usr/bin/xzcat
/app/vendor/ruby/3.3.0/gems/bindata-2.5.0/lib/bindata/transform/xz.rb
```

No ecosystem gems contain a vulnerable `liblzma.so`.

```irb
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
```

```irb
irb(main):008> VersionDataEntry.where('version_data_entries.name = ?', 'xz').joins(:version, :rubygem).pluck(*attrs).map { |p| attrs.zip(p).to_h }
=> []
```
