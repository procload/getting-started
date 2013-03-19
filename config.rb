require 'compass'

# Add Partials Import Path
additional_import_paths = ["partials"]

# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
end

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


page "*", :layout => "public"