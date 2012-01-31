module Middleman::Features::Kss
  class << self
    def registered(app)
      app.helpers HelperMethods
    end
    alias :included :registered
  end

  module HelperMethods
    def make_a_link(url, text)
      "<a href='#{url}'>#{text}</a>"
    end
  end
end

#module Middleman::Features::Kss
#  class << self
#    def registered(app)
#      require 'kss'
#      app.helpers HelperMethods
#    end
#    alias :included :registered
#  end
#  
#  module HelperMethods
#      def make_a_link(url, text)
#        "<a href='#{url}'>#{text}</a>"
#      end
#    end
#  
#  module HelperMethods
#    def make_a_link(url, text)
#      "<a href='#{url}'>#{text}</a>"
#    end
#    
#    # Generates a styleguide block. A little bit evil with @_out_buf, but
#    # if you're using something like Rails, you can write a much cleaner helper
#    # very easily.
#    #def styleguide_block(section, &block)
#    #  raise ArgumentError, "Missing block" unless block_given?
#      
#    #  @section = styleguide.section(section)
#    #  content = capture(&block)
#    #  render 'kss/shared/styleguide_block', :section => @section, :example_html => content
#    #end
#  end
#end