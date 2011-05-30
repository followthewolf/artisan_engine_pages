require 'spec_helper'

describe PagesController do
  describe "GET :show" do
    context "when not given a page parameter" do
      it "renders the pages/home template" do
        get :show
        response.should render_template 'pages/home'
      end
    end
  
    context "when given a page parameter" do
      it "attempts to render the pages/page_name template" do
        get :show, :page => 'about'
        response.should render_template 'pages/about'
      end
    end
  end
end