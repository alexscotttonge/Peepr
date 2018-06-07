require 'rails_helper'

RSpec.describe User, "validations" do
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_presence_of :email }
end

RSpec.describe User, type: :model do
  it "user is saved correctly to the database" do
    create :user

    expect(User.count).to eq 1
  end
end

RSpec.describe User, "deleting users" do
  context "when a user is deleted" do
    it "deletes the blog posts associated with the user" do
      user = create :user
      text_peep = TextPeep.create(body: "Get your peep on")
      user.peeps.create(content_id: text_peep.id, content_type: "TextPeep")

      user.destroy

      expect(Peep.count).to eq 0
    end
  end
end
