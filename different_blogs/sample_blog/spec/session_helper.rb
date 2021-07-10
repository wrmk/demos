  def sign_up
    visit new_user_registration_path

    fill_in :user_email, :with => 'useddfr@email.com'
    fill_in :user_username, :with => 'josdhnf'
    fill_in :user_password, :with => 'testpasssword1'
    fill_in :user_password_confirmation, :with => 'testpasssword1'
    click_button 'Sign up'
  end