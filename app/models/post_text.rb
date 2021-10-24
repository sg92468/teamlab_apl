class PostText < ApplicationRecord
  belongs_to :user
  attachment :image
  
  validates :title, presence: true
  validates :category, presence: true
  validates :body, presence: true
  
  # category.rbにデータを作成
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  
end
