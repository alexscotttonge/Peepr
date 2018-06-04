class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true

end
