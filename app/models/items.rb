class Items < ActiveRecord::Base
  attr_accessible :additional_info, :brand, :current_price, :delivery_type, :item_condition, :original_price, :seller_id, :size, :category

  belongs_to :seller, class_name: 'User'
  
  belongs_to :category
  
  has_one :primary_photo, class_name: 'Photo'
  
  has_many :photos
  
end
