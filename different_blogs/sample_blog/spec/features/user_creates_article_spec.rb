require "rails_helper"
require "session_helper"

feature "article creation" do

  before(:each) do
    sign_up
  end

  scenario "alows user to visit new article page" do
    
    visit new_article_path

    expect(page).to have_content 'New article'
  end
end