class Category < ActiveRecord::Base
  attr_accessible :name, :parent_category_id, :image_url
  
  has_many :items
  
  def dummy
    true
  end
end
