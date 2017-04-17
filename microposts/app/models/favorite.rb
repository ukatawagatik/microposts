class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favopost, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :favopost_id, presence: true
end
