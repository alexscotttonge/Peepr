require "rails_helper"

RSpec.feature "User signs out" do
  scenario "successfully" do
    user = create :user

    visit sign_in_path
    fill_in "session_email_or_username", with: user.email
    fill_in "session_password", with: user.password
    click_button "Sign in"

    expect(page).to have_css "h1", text: "Dashboard"

    click_on "Sign out"

    expect(page).to have_css "h2", text: "Sign in"
  end
end
