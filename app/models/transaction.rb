class Transaction < ActiveRecord::Base
  attr_accessible :buyer_id
  
  belongs_to :buyer, class_name: 'User'
  
  has_many :items
  
end
