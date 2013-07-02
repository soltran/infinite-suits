class Category < ActiveRecord::Base
  attr_accessible :name, :parent_category_id
end
