require 'rails_helper'

RSpec.describe TextPeep, "validations" do
  it { is_expected.to validate_presence_of :body }
end

RSpec.describe TextPeep, "saving TextPeeps" do
  it "saves a TextPeep correctly" do
    text_peep = TextPeep.create(body: "Get your peep on")

    expect(TextPeep.count).to eq 1
  end
end
