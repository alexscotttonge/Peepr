require "rails_helper"

RSpec.feature "User creates a peep" do
  scenario "successfully" do
    visit sign_in_path
    sign_in_with_email

    fill_in "peep_body", with: "Here me now"
    click_on "Peep!"

    expect(page).to have_content "Peeped successfully!"
  end
end
