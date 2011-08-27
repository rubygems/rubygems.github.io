require 'rake'

begin
  require "isolate"
  require "isolate/rake"
  Isolate.now! :path => ".isolate", :system => false do
    gem "jekyll", "~> 0.11"
    gem "RedCloth"
  end
rescue LoadError => e
  puts "Couldn't isolate jekyll -- hope you have it installed globally"
  puts e
end

task :default => :build

desc "Run jekyll once -- finds errors fast"
task :build do
  sh "jekyll --no-auto --no-server"
end

desc "Run jekyll server for iterative blog writing"
task :server do
  sh "jekyll --server"
end
