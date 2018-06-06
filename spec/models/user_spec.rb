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
      user.peeps.create(body: "Get in ma belly")

      user.destroy

      expect(Peep.count).to eq 0
    end
  end
end
