require "rails_helper"
include SignIn

RSpec.feature "User likes a peep" do
  scenario "successfully" do
    visit sign_in_path
    sign_in_with_email

    fill_in "peep_content_body", with: "Here me now"
    click_on "Peep!"

    click_on "Like"

    expect(page).to have_content "Unlike"

    click_on "Unlike"

    expect(page).to have_content "Like"
  end
end
