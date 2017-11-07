def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'blabla@gmail.com'
  fill_in :user_username, with: 'alex'
  fill_in :user_password, with: '123459'
  fill_in :user_password_confirmation, with: '123459'

  click_button 'Sign up'
end
