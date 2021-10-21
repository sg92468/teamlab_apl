class PostText < ApplicationRecord
  belongs_to :user
  attachment :image
end
