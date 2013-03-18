require 'compass'
require 'bootstrap-sass'
require "kss"

# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
end

# When filename globbing is put back in Middleman 3, this will be much less ugly
# ['01_structure','02_colors','03_typography','04_links','05_buttons','06_forms','07_tables','08_dialogs','09_graphic','10_navigation','11_modules'].each do |name|
#   page "/styleguide/#{name}.html", layout => "layouts/styleguide" do
#     @styleguide = Kss::Parser.new('source/css')
#   end
# end
page "/styleguide/index.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/css')
end
page "/styleguide/05_buttons.html", :layout => "layouts/styleguide" do
  @styleguide = Kss::Parser.new('source/css')
end

# Methods defined in the helpers block are available in templates
helpers do
  
  def styleguide_block(section, &block)
    @section = @styleguide.section(section)
    @example_html = capture{ block.call }
    @escaped_html = ERB::Util.html_escape @example_html
    @_out_buf << erb(:_styleguide_block)
  end

  # Captures the result of a block within an erb template without spitting it
  # to the output buffer.
  def capture(&block)
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


page "*", :layout => "public"