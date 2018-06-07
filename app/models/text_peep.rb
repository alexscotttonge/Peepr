class TextPeep < ApplicationRecord
  validates :body, presence: true, length: { in: 1..140 }
end
