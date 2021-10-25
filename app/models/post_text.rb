class PostText < ApplicationRecord
  belongs_to :user
  attachment :image
  
  validates :title, presence: true
  validates :category_id, presence: true
  validates :body, presence: true
  
  # category.rbにcategory_id内のデータを設定
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  
end
