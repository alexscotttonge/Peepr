require 'rails_helper'

RSpec.describe PhotoPeep, type: :model do
  it "saves a photo peep correctly" do
    user = create :user
    photo_peep = PhotoPeep.create
    photo_peep.images.attach(io: File.open(Rails.root.join("spec", "support", "rails.png")),
                                          filename: 'rails.png', content_type: 'image/png')
    user.peeps.create(content_id: photo_peep.id, content_type: "PhotoPeep")

    expect(Peep.count).to eq 1
  end
end
