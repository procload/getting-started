class Public::PagesController < PublicController

  def static
    raise ActiveRecord::RecordNotFound unless FileTest.exists?(File.join(Rails.root,'app','views','public','static',"#{params[:permalink]}.html.erb"))
    render "public/static/#{params[:permalink]}"
  end

end