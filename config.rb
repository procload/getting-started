require "bootstrap-sass"

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
  config.http_path = "/"
  config.images_dir = "img"
  config.javascripts_dir = "js"
end

# Use KSS for awesome styleguide support

require "kss"

# When filename globbing is put back in Middleman 3, this will be much less ugly
# ['01_structure','02_colors','03_typography','04_links','05_buttons','06_forms','07_tables','08_dialogs','09_graphic','10_navigation','11_modules'].each do |name|
#   page "/styleguide/#{name}.html", layout => "layouts/styleguide" do
#     @styleguide = Kss::Parser.new('source/stylesheets')
#   end
# end
page "/styleguide/index.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/01_structure.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/02_colors.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/03_typography.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/04_links.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/05_buttons.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/06_forms.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/07_tables.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/08_dialogs.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/09_graphic.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/10_navigation.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end
page "/styleguide/11_modules.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/stylesheets')
end

###
# Helpers
###

set :css_dir, 'stylesheets'

set :js_dir, 'js'

set :images_dir, 'img'

# Methods defined in the helpers block are available in templates
helpers do
  # KSS: Generates a styleguide block. A little bit evil with @_out_buf, but
  # if you're using something like Rails, you can write a much cleaner helper
  # very easily.
  def styleguide_block(section, &block)
    @section = @styleguide.section(section)
    @example_html = kss_capture{ block.call }
    @_out_buf << partial('styleguide/block')
  end

  # KSS: Captures the result of a block within an erb template without spitting
  # it to the output buffer.
  def kss_capture(&block)
    out, @_out_buf = @_out_buf, ""
    yield
    @_out_buf
  ensure
    @_out_buf = out
  end

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

