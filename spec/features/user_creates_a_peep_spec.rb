require "rails_helper"
include SignIn

RSpec.feature "User creates a peep" do
  scenario "successfully" do
    visit sign_in_path
    sign_in_with_email

    fill_in "peep_content_body", with: "Here me now"
    click_on "Peep!"

    expect(page).to have_content "Peeped successfully!"
    expect(page).to have_content "Here me now"
  end
end

RSpec.feature "User creates a peep over 140 characters", skip: true do
  scenario "it doesn't save" do
    visit sign_in_path
    sign_in_with_email

    fill_in "peep_content_body", with: "A" * 141
    click_on "Peep!"

    expect(page).to have_content "Could not Peep yo"
  end
end
