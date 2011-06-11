class PagesController < FrontController
  def show
    requested_page = params[ :page ]
    
    if requested_page
      @title = requested_page.titleize
      render "pages/#{ requested_page }", :layout => false and return if request.xhr?
      render "pages/#{ requested_page }"
    else
      render 'pages/home'
    end
  end
end