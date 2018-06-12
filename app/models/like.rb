class Like < ApplicationRecord
  belongs_to :user
  belongs_to :peep

  validates :user_id, uniqueness: { scope: :peep_id }
end
