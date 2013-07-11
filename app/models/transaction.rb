class Transaction < ActiveRecord::Base
  attr_accessible :buyer_id, :item_ids
  
  belongs_to :buyer, class_name: 'User'
  
  has_many :items
  
  
  def process_items
    self.buyer.cart_items = []
    self.items.each do |item|
      item.sold = true
      item.save!
      cost = price_and_shipping_cost(item)
      gold_from_buyer(cost)
      gold_to_seller(cost, item.seller)
    end
    self.buyer.save!
  end
  
  def gold_from_buyer(amount)
    self.buyer.gold -= amount
  end
  
  def gold_to_seller(amount, seller)
    seller.gold += amount
    seller.save!
  end
  
  def price_and_shipping_cost(item)
    cost = item.current_price
    cost += 3 if item.delivery_type == "shipping"
  end
  
end
