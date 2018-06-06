require 'rails_helper'

RSpec.describe Peep, "associations" do
  it { is_expected.to belong_to :user }
end

RSpec.describe Peep, "validations" do
  it { is_expected.to validate_presence_of :body }
  it { is_expected.to validate_presence_of :user }
end

RSpec.describe Peep, "saving Peeps" do
  it "saves a Peep correctly" do
    user = create :user
    user.peeps.create(body: "Get your peep on")

    expect(Peep.count).to eq 1
  end
end
