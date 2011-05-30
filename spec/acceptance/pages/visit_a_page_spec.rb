require File.expand_path( '../../acceptance_helper', __FILE__ )

feature 'Visit a basic page', %q{
  In order to view informational content on the website
  As a patron
  I want to visit pages.
} do
  
  scenario 'I can visit a basic page' do
    # When I visit the URL for a basic page,
    visit '/pages/about'
    
    # Then I should see the page.
    page.should have_content 'About'
  end

end