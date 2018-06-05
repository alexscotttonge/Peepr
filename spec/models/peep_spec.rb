require 'rails_helper'

RSpec.describe Peep, "associations" do
  it { is_expected.to belong_to :user }
end

RSpec.describe Peep, "validations" do
  it { is_expected.to validate_presence_of :body }
end
