class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true

  has_many :peeps, dependent: :destroy
  has_many :likes
  has_many :liked_peeps, through: :likes, source: :peep

  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships

  def follow(user)
    followed_users << user
  end

  def like(peep)
    liked_peeps << peep
  end

  def unlike(peep)
    liked_peeps.destroy(peep)
  end

  def liked?(peep)
    liked_peep_ids.include?(peep.id)
  end

  def to_param
    username
  end
end
