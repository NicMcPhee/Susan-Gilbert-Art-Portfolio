###
# Compass
###

# ZURB Foundation
require "zurb-foundation"

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

sprockets.append_path File.join root, 'bower_components'
sprockets.import_asset 'jquery'
sprockets.import_asset 'fastclick'
sprockets.import_asset 'foundation'
sprockets.import_asset 'magnific-popup'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "robots.txt", :layout => false
page "humans.txt", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout

page "/galleries/*", :layout => "gallery"
page "/about/*", :layout => "about"

#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Livereload
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

activate :deploy do |deploy|
    deploy.method = :ftp
    deploy.host = "unhinderedbytalent.com"
    deploy.user = "SusansPortfolio"
    deploy.password = `security 2>&1 >/dev/null find-generic-password -ga account_name_for_password |ruby -e 'print $1 if STDIN.gets =~ /^password: "(.*)"$/'`
    deploy.path = "/www/www/SusanGilbert"
end