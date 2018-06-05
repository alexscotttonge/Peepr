require "rails_helper"
include SignIn

RSpec.feature "User signs in with email" do
  scenario "successfully" do

    visit sign_in_path
    
    sign_in_with_email

    expect(page).to have_css "h1", text: "Dashboard"
  end
end
