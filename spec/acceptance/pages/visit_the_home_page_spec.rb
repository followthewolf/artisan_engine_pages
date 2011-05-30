require File.expand_path( '../../acceptance_helper', __FILE__ )

feature 'Visit the home page', %q{
  In order to begin navigating the website
  As a patron
  I want to visit the home page.
} do
  
  scenario 'I can visit the home page' do
    # When I visit the home page,
    visit '/'

    # Then I should see the home page.
    page.should have_content 'Home'
  end

end