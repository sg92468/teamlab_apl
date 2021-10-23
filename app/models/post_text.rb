class PostText < ApplicationRecord
  belongs_to :user
  attachment :image
  
  validates :title, presence: true
  validates :category, presence: true
  validates :body, presence: true
  
end
