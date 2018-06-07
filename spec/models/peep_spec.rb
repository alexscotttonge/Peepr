require 'rails_helper'

RSpec.describe Peep, "associations" do
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :content }
end

RSpec.describe Peep, "validations" do
  it { is_expected.to validate_presence_of :user }
end

RSpec.describe Peep, "saving Peeps" do
  it "saves a Peep correctly" do
    user = create :user
    text_peep = TextPeep.create(body: "Get your peep on")
    user.peeps.create(content_id: text_peep.id, content_type: "TextPeep")

    expect(Peep.count).to eq 1
  end
end
