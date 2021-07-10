require "rails_helper"

feature "contact creation" do
  scenario "alows access to contact page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, :with => 'mail@example.com'
    fill_in :contact_message, :with => 'blablabla' 
    click_button 'Send message'

    expect(page).to have_content 'Thanks'
  end
end