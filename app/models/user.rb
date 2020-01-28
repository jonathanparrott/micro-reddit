class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { maximum: 50 }
  has_many :posts
  has_many :comments
end
