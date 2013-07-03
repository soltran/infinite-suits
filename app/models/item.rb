class Item < ActiveRecord::Base
  attr_accessible :additional_info, :brand, :current_price, :delivery_type, :item_condition, :original_price, :seller_id, :size, :category_id, :photos_attributes

  belongs_to :seller, class_name: 'User'
  
  belongs_to :category
  
  has_many :photos, as: :imageable, :dependent => :destroy
  
  accepts_nested_attributes_for :photos, allow_destroy: true
  
  validates_presence_of :brand, :size, :item_condition, :original_price, :current_price
  
end
