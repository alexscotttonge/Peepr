class Peep < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: { in: 1..140 }
  validates :user, presence: true

  default_scope { order(created_at: :desc) }

  def username
    user.username
  end
end
