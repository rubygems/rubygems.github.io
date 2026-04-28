require "digest"

module Jekyll
  module Md5Filter
    def md5(input)
      normalized_input = input.to_s.strip.downcase
      return "" if normalized_input.empty?

      Digest::MD5.hexdigest(normalized_input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::Md5Filter)
