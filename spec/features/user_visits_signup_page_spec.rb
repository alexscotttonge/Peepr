require "rails_helper"

RSpec.feature "User visits sign up page" do
  scenario "to sign up" do
    visit sign_up_path

    expect(page).to have_css "h2", text: "Sign up"

    fill_in "user_email", with: "mrpink@dogs.com"
    fill_in "user_username", with: "Pinky"
    fill_in "user_password", with: "Dogs"

    click_button "Sign up"
    save_and_open_page
    
    expect(page).to have_css "h1", text: "Peepr"
  end
end
