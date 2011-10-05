---
title: Shaving a YAML Yak
layout: post
author: tenderlove
---

Have you ever seen this error?

    $ gem install rails --pre
    ERROR:  While executing gem ... (NameError)
      uninitialized constant Psych::Syck
    $

Yes, I have too.  Today we're going to discuss the source of this error, and what we need to do to fix it.

## TL;DR

Upgrade rubygems to make this error go away.  However, the long term solution is to fix rubygems.org.


### Gemspecs and YAML

When you package your gem, the resulting `.gem` file contains a YAML representation of your gemspec.  The YAML representation of your gemspec contains everything your gemspec contains, including author information and dependency information.

The generated gem file is just a tar file:

    $ gem fetch rails
    Fetching: rails-3.1.0.gem (100%)
    Downloaded rails-3.1.0
    $ file rails-3.1.0.gem 
    rails-3.1.0.gem: POSIX tar archive

The tar file contains two gzipped files.  One is the actual contents of your gem, the rb files, etc.  The other gz file is metadata about your gem:

    $ tar xvf rails-3.1.0.gem 
    x data.tar.gz
    x metadata.gz

The metadata is your gemspec in YAML format.  We can easily examine the YAML data by using the `gzcat` command:

    $ gzcat metadata.gz 
    --- !ruby/object:Gem::Specification 
    name: rails
    version: !ruby/object:Gem::Version 
      hash: 3
      prerelease: 
      segments: 
      - 3
      - 1
      - 0
      version: 3.1.0
    platform: ruby
    ...

### YAML and Ruby's standard library

Ruby has shipped with a YAML parsing library for quite a long time.  The library (called "syck") is a *custom* YAML 1.0 parser, and has been part of Ruby since 1.8.  Unfortunately, the library was abandoned.

YAML parsing is important for Ruby, so rather than removing Syck, it is being replaced with a new library called Psych.  Psych is a YAML 1.1 parser, but is powered by [libyaml](http://pyyaml.org/wiki/LibYAML).  libyaml is developed by the team that writes the YAML spec, and is considered to be the canonical implementation.

Unfortunately, this transition can cause subtle but annoying problems.

### Dealing with `=`

The problem we see when downloading from rubygems.org is due to round tripping issues between Syck and Psych.  Let's compare how Syck and Psych serialize the `=` sign:

    >> RUBY_VERSION
    => "1.8.7"
    >> require 'yaml'
    => true
    >> YAML.dump ['=']
    => "--- \n- \"=\"\n"
    >>

In the example above, we're using Syck to dump an equals sign.  Notice this double quotes surrounding the equals sign.  Now let's try the same thing with Psych:

    irb(main):001:0> RUBY_VERSION
    => "1.9.4"
    irb(main):002:0> require 'yaml'
    => true
    irb(main):003:0> YAML.dump ['=']
    => "---\n- =\n"
    irb(main):004:0>

Notice in this example the lack of double quotes surrounding the equals sign.  Both of these are valid YAML documents.  Let's see what happens when we feed the YAML from Psych in to Syck:

    >> RUBY_VERSION
    => "1.8.7"
    >> yaml = "---\n- =\n"
    => "---\n- =\n"
    >> YAML.load yaml
    => [#<YAML::Syck::DefaultKey:0x1026d0210>]
    >>

There we have it!  We can get Syck to return a strange object even when given a valid YAML document.  But how does this relate to gemspecs and rubygems.org?

### Gemspec revisited

Recall that gemspecs are dumped to YAML when the gem is packaged.  It's possible (and not unheard of) for our gemspecs to contain an equals sign.  Consider the defining dependencies in your gemspec:

    Gem::Specification.new do |s|
      ...
      s.add_dependency('activesupport', '= 3.1.0')
      ..
    end

Those dependencies are serialized to the generated YAML file.  If we package this using Psych and examine the generated yaml, we can find the section where the dependency is declared:

    $ gzcat metadata.gz
    ...
    dependencies:
    - !ruby/object:Gem::Dependency
      name: activesupport
      requirement: &70133834330380 !ruby/object:Gem::Requirement
        none: false
        requirements:
        - - =
          - !ruby/object:Gem::Version
            version: 3.1.0
    ...

Notice the unquoted equals sign in the metadata.

### rubygems.org

The trouble with the spec we saw above is that rubygems.org still uses syck as it's YAML parser.  When the server parses the gem YAML file, it turns the equals sign in to a Syck DefaultKey.

You can see this problem manifest itself on the rubygems.org website if you look at the Runtime Dependencies for some gems:

![runtime deps screenshot](https://img.skitch.com/20110901-dcmqkfy9eyu69dp1xfbqyfe9wg.jpg)

A simple [google search](http://www.google.com/search?hl=en&safe=off&q=defaultkey+site%3Arubygems.org&oq=defaultkey+site%3Arubygems.org&aq=f&aqi=&aql=&gs_sm=e&gs_upl=2623l8510l0l8586l57l29l0l12l0l3l348l2937l0.1.7.3l12l0) will show that this is not an uncommon problem.

### Command line errors

When downloading gem information, rubygems.org will send dependency information in marshall format.  Gems that have the DefaultKey object in their dependencies will have that object marshalled and sent down to the client.  If the client does not use Syck (which is default for 1.9.2+ when libyaml is available), then the Syck constant cannot be found and the "uninitialized constant" error will appear.

### How can we fix this?

We have two ways to deal with this issue.  The first way to deal with this issue is to upgrade rubygems.  Rubygems contains code to *work around* the issue when installing gems.  But it does not *fix* the issue.

The only way we can fix this error for all users is to upgrade rubygems.org to use psych as the YAML parser.  Upgrading rubygems.org will prevent the strange objects from entering marshal data sent to users.

We're working on this upgrade, but we can use your help!  Specifically, we need to get [delayed job](https://github.com/collectiveidea/delayed_job/commit/cbb4060) to be compatible with Psych.  Once we overcome that hurdle, I think it will be easy to get rubygems.org upgraded.

Thanks for listening!

<3<3<3
