require "rails_helper" 
require "session_helper"

feature "account creation" do
 before(:each) do
    sign_up
  end

  scenario "alows guest to create account" do
   

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end



