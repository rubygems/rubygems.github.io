# frozen_string_literal: true
require 'fileutils'
require 'grover'

Grover.configure do |config|
  config.options = {
    viewport: {
      width: 1200,
      height: 630,
      deviceScaleFactor: 2
    },
    prefer_css_page_size: true,
    emulate_media: 'screen',
    bypass_csp: true,
    wait_until: 'domcontentloaded',
    full_page: true,
    margin: {
      top: 0,
      bottom: 0,
      left: 0,
      right: 0
    },
    captureBeyondViewport: false,
  }
end

module Previews
  class Generator < Jekyll::Generator
    safe true

    def generate(site)
      # Loop through all the posts
      site.posts.docs.each do |post|
        next unless post.data['auto_preview']
        slug = post.data['slug']
        tmp_img = "/tmp/#{slug}.png"
        src_img = "./images/previews/#{slug}.png"

        # Skip if there is already an existing image.
        # To regenerate a preview image, simply delete the image in the destination folder
        next if File.file?(src_img)
        puts "\n  Creating preview: #{slug}.png"

        # HTML for generating a @2x image of 1200x630 image at 100 quality
        # Setting the charset is helpful when you have accents in your posts title
        html = <<~HTML
          <!DOCTYPE HTML>
          <html>
            <head>
              <meta charset='utf-8' />
              <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@400;700&display=swap" rel="stylesheet">
              <style>
                #{File.read('./stylesheets/preview.css')}
              </style>
            </head>
            <body>
              <div class='top'>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="200" height="200" class="logo">
                  <g fill="#e9573f">
                    <path d="M68.8 69.9l-.1-.1L46.5 92l53.9 53.8 22.2-22.1L154.3 92l-22.2-22.2v-.1H68.7"/>
                    <path d="M100.2 10.6l-78.5 45v90l78.5 45 78.5-45v-90l-78.5-45zM163.7 137l-63.5 36.6L36.7 137V64l63.5-36.6L163.7 64v73z"/>
                  </g>
                </svg>
                <h2>#{post.data['title']}</h2>
              </div>
              <div class='excerpt'>
                #{post.data['excerpt']}
              </div>
            </body>
          </html>
        HTML

        Grover.new(html,
          format: 'png',
          width: 1200,
          height: 630,
          zoom: 2,
          margin: {
            top: 0,
            bottom: 0,
            left: 0,
            right: 0
          },
          full_page: false,
          capture_beyond_viewport: false
        ).to_png.then do |png|
          File.write(src_img, png)
        end

        # Optimize to reduce the size to about a third
        system("pngquant", src_img, "-o", src_img, "-f", exception: true)
      end
    end
  end
end
