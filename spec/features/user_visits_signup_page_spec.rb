require "rails_helper"

RSpec.feature "User visits sign up page" do
  scenario "to sign up" do
    visit sign_up_path

    expect(page).to have_css "h2", text: "Sign up"
  end
end
