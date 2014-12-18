# Load Susy for our grid system
require "susy"

# Use Bourbon for SASS mixins and helpers
require "bourbon"

# Use Autoprefixer so we no longer need to use mixins for CSS3 properties
activate :autoprefixer

# Reload page when saving SCSS, CoffeeScript or HTML files
activate :livereload

###
# Helpers
###

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
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # require "middleman-smusher"

  # activate :smusher
end

