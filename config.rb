require "susy"

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
  config.http_path = "/"
  config.images_dir = "img"
  config.javascripts_dir = "js"
end


###
# Helpers
###

set :css_dir, 'stylesheets'

set :js_dir, 'js'

set :images_dir, 'img'

# Methods defined in the helpers block are available in templates
helpers do
  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
  end
end

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  require "middleman-smusher"
  activate :smusher
  
end

