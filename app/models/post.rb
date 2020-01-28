class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 350 }
  validates :body, presence: true
end
