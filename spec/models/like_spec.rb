require 'rails_helper'

RSpec.describe Like, "associations" do
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :peep }
end
