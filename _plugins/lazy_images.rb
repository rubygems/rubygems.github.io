module Jekyll
  module LazyImages
    IMG_TAG = /<img\s([^>]*?)\/?>/

    def self.patch(html)
      html.gsub(IMG_TAG) do |match|
        attrs = Regexp.last_match(1)
        attrs += ' loading="lazy"' unless attrs.match?(/\bloading\s*=/)
        attrs += ' decoding="async"' unless attrs.match?(/\bdecoding\s*=/)
        "<img #{attrs.strip}>"
      end
    end
  end
end

Jekyll::Hooks.register :documents, :post_render do |doc|
  next unless doc.is_a?(Jekyll::Document)
  next unless doc.collection.label == "posts"
  next unless doc.output_ext == ".html"
  doc.output = Jekyll::LazyImages.patch(doc.output)
end
