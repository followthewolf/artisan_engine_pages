require 'spec_helper'

describe ArtisanEngine::Pages do
  it "is an Engine" do
    ArtisanEngine::Pages::Engine.ancestors.should include Rails::Engine
  end
end

describe "ArtisanEngine::Pages Test/Development Environment" do
  it "initializes ArtisanEngine::Pages" do
    ArtisanEngine::Pages.should be_a Module
  end
  
  it "compiles its stylesheets into ArtisanEngine's stylesheets/artisan_engine/pages directory" do
    Compass.configuration.css_path.should == "#{ ArtisanEngine.root }/lib/generators/artisan_engine/templates/assets/stylesheets/artisan_engine/pages"
  end
  
  it "does not compile stylesheets during tests" do
    Sass::Plugin.options[ :never_update ].should be_true
  end
  
  it "compiles its javascripts into ArtisanEngine's javascripts/artisan_engine/pages directory" do
    Barista.output_root.should == Pathname.new( "#{ ArtisanEngine.root }/lib/generators/artisan_engine/templates/assets/javascripts/artisan_engine/pages" )
  end
end