require "digest"
require "fileutils"
require "open-uri"
require "jekyll_og_image/configuration"
require "jekyll_og_image/element/text"
require "jekyll_og_image/generator"

# The gem doesn't coerce values from YAML — gravity must be a Symbol and the
# nested position keys must be symbolized for Hash#[] access in the generator.
module JekyllOgImageImageCoercion
  def image
    raw = @raw_config["image"]
    return super unless raw.is_a?(Hash)

    coerced = raw.dup
    coerced["gravity"] = raw["gravity"].to_sym if raw["gravity"]
    coerced["position"] = Jekyll::Utils.symbolize_hash_keys(raw["position"]) if raw["position"].is_a?(Hash)
    JekyllOgImage::Configuration::Image.new(**Jekyll::Utils.symbolize_hash_keys(coerced))
  end
end
JekyllOgImage::Configuration.prepend(JekyllOgImageImageCoercion)

# jekyll-og-image passes text directly to Vips::Image.text, which interprets
# input as Pango markup. Titles containing `&`, `<`, or `>` crash the build.
# Escape the message before it reaches libvips.
module JekyllOgImagePangoEscape
  PANGO_ESCAPES = { "&" => "&amp;", "<" => "&lt;", ">" => "&gt;" }.freeze

  def initialize(message, **kwargs)
    super(message.to_s.gsub(/[&<>]/, PANGO_ESCAPES), **kwargs)
  end
end
JekyllOgImage::Element::Text.prepend(JekyllOgImagePangoEscape)

# The gem assumes a top-anchored logo and shrinks the header to clear it. With
# our logo anchored at the bottom (gravity: s/se/sw), the title can use the
# full canvas width.
module JekyllOgImageHeaderWidth
  TOP_GRAVITIES = %w[n ne nw].freeze

  def add_header(canvas, item, config)
    title = item.data["title"] || "Untitled"
    full_title = "#{config.header.prefix}#{title}#{config.header.suffix}"

    top_anchored = config.image.path && TOP_GRAVITIES.include?(config.image.gravity.to_s)
    header_width = top_anchored ? (1040 - config.image.width - 30) : 1040

    canvas.text(full_title,
      width: header_width,
      color: config.header.color,
      dpi: 400,
      font: config.header.font_family
    ) { |_canvas, _text| { x: 80, y: 100 } }
  end
end
JekyllOgImage::Generator.prepend(JekyllOgImageHeaderWidth)

# Overlay a circular Gravatar next to the byline. Posts without an
# author_email get the default layout. Avatars are fetched once and cached
# under .jekyll-cache/og-avatars/.
module JekyllOgImageAvatar
  AVATAR_SIZE = 80
  AVATAR_GAP = 30
  GRAVATAR_PX = 160
  CACHE_DIR = File.join(".jekyll-cache", "og-avatars").freeze

  def add_metadata(canvas, item, config)
    avatar_data = avatar_for(item.data["author_email"])
    return super unless avatar_data

    canvas = canvas.image(avatar_data,
      gravity: :sw,
      width: AVATAR_SIZE,
      height: AVATAR_SIZE,
      radius: GRAVATAR_PX / 2
    ) { |_c, _img| { x: 80, y: config.margin_bottom - 25 } }

    metadata_text = send(:metadata_text_for, item, config)
    return canvas if metadata_text.empty?

    canvas.text(metadata_text,
      gravity: :sw,
      width: send(:metadata_width_for, config) - AVATAR_SIZE - AVATAR_GAP,
      color: config.content.color,
      dpi: 150,
      font: config.content.font_family
    ) { |_c, _t| { x: 80 + AVATAR_SIZE + AVATAR_GAP, y: config.margin_bottom } }
  end

  private

  def avatar_for(email)
    return nil if email.nil? || email.to_s.strip.empty?

    hash = Digest::MD5.hexdigest(email.to_s.strip.downcase)
    cache_path = File.join(CACHE_DIR, "#{hash}.jpg")

    unless File.exist?(cache_path)
      FileUtils.mkdir_p(CACHE_DIR)
      url = "https://secure.gravatar.com/avatar/#{hash}?s=#{GRAVATAR_PX}&d=retro"
      URI.open(url, open_timeout: 5, read_timeout: 10) do |io|
        File.binwrite(cache_path, io.read)
      end
    end

    File.read(cache_path)
  rescue StandardError => e
    Jekyll.logger.warn("Jekyll Og Image:", "Avatar fetch failed for #{email}: #{e.message}")
    nil
  end
end
JekyllOgImage::Generator.prepend(JekyllOgImageAvatar)
