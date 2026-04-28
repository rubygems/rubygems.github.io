require "digest"

module Jekyll
  module Md5Filter
    def md5(input)
      return "" if input.nil?
      Digest::MD5.hexdigest(input.to_s.strip.downcase)
    end
  end
end

Liquid::Template.register_filter(Jekyll::Md5Filter)
