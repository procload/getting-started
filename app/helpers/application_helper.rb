module ApplicationHelper

  def flashes
    if flashes?
      content_tag(:div, :id => 'notifications') do
        flash.collect do |k,v| 
          type = k.eql?(:notice) ? 'success' : 'error'
          concat(content_tag(:div, content_tag(:div, v.html_safe + '<button type="button" class="close" data-dismiss="alert" >x</button>'.html_safe, :class => "container"), :class => "alert alert-#{type} flash #{k}")) 
        end
      end
    end
  end
  
  def flashes?
    return true unless flash[:notice].blank? && flash[:error].blank? && flash[:alert].blank?
    return false
  end
  
  # Returns image tag for an object's attachment, with optional link element wrapped around it. 
  #
  #   @param Object                   - Required 
  #   @param String :alt              - Defaults to object.title
  #   @param String :title
  #   @param String :class
  #   @param String :style
  #   @param String :dimensions       - Dragonfly-esque dimensions... @see http://markevans.github.com/dragonfly/file.Processing.html
  #   @param String :link             - Destination for link_to tag 
  #   @param Symbol :encode           - :gif, :jpg, :png, etc. Defaults to :png
  #   @param Object :object           - Dragonfly object, defaults to object.file
  #   @param Boolean :video           - Link to an iframe lightbox?
  #   @param String :video_dimensions - (width)x(height), defaults to 500x350
  #
  def image_asset(object, args={})

    # Gracefully handle nil
    return if object.try(:attachment).nil? && args[:object].nil?

    # Define default opts and merge with parameter args
    opts = {
      :alt => '',
      :video_dimensions => '500x350',
      :encode => :png
    }.merge(args)

    # Override alt text with object title if it exists
    opts[:alt] = escape_javascript(object.title) if object.respond_to?('title')

    # See if optional file object actually contains a dfly instance
    if opts[:object]
      attachment = opts[:object].attachment
      attachment_gravity = opts[:object].attachment_gravity
    else 
      attachment = object.attachment
      attachment_gravity = object.attachment_gravity
    end

    # If this is a crop, try to add gravity
    if opts.try(:[], :dimensions) && opts[:dimensions].include?('#')
      # Strip out image geometry
      opts[:size] = /[0-9]{1,}x[0-9]{1,}/.match(opts[:dimensions]).try(:[], 0)
      width, height = opts[:size].split('x')
      image = attachment.process(:resize_and_crop, :width => width, :height => height, :gravity => attachment_gravity).encode(opts[:encode])
    else
      image = opts.try(:[], :dimensions) ? attachment.process(:thumb, opts[:dimensions]).encode(opts[:encode]) : attachment.encode(opts[:encode])
    end

    # Determine which opts ultimately get passed to image_tag
    valid_opts = [:alt, :class, :style, :title]
    valid_opts.push(:size) unless args[:size] == false

    # Create image tag
    img_tag = image_tag(image.url, opts.slice(*valid_opts))

    # If this is a video link
    if opts[:video]
      link_to img_tag, opts[:link], :rel => 'facebox', :rev => "iframe|#{opts[:video_dimensions]}"
    else
      link_to_if opts[:link], img_tag, opts[:link]
    end

  end
  
end
