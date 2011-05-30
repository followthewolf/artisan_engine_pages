class PagesController < FrontController
  def show
    requested_page = params[ :page ]
    
    if requested_page
      render "pages/#{ requested_page }"
    else
      render 'pages/home'
    end
  end
end