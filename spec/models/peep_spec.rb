require 'rails_helper'

RSpec.describe Peep, "associations" do
  it { is_expected.to belong_to :user }
end
