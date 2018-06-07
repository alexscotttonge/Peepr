require "rails_helper"
include SignIn

RSpec.feature "User views own peep" do
  scenario "successfully" do
    visit sign_in_path
    sign_in_with_email

    fill_in "peep_content_body", with: "Here me now"
    click_on "Peep!"

    click_on "whiterussian"

    expect(page).to have_css "h1", text: "whiterussian"
  end
end
