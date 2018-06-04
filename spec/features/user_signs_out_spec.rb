require "rails_helper"

RSpec.feature "User signs in" do
  scenario "successfully" do
    user = create :user

    visit sign_in_path
    fill_in "session_email", with: user.email
    fill_in "session_password", with: user.password
    fill_in "session_username", with: user.username
    click_button "Sign in"

    expect(page).to have_css "h1", text: "Peepr"

    click_on "Sign out"

    expect(page).to have_css "h2", text: "Sign in"
  end
end
