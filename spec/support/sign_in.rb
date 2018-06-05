module SignIn

  def sign_in_with_email
    user = create :user
    
    fill_in "session_email_or_username", with: user.email
    fill_in "session_password", with: user.password
    click_button "Sign in"
  end
end
