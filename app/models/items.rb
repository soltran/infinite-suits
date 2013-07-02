class Items < ActiveRecord::Base
  attr_accessible :additional_info, :brand, :current_price, :delivery_type, :item_condition, :original_price, :seller_id, :size

  belongs_to :seller, class_name: 'User'
  
  has_one :primary_photo, class_name: 'Photo'
  
  has_many :photos
  
end
