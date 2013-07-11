class Item < ActiveRecord::Base
  attr_accessible :additional_info, :brand, :current_price, :delivery_type, :item_condition, :original_price, :seller_id, :size, :category_id, :photos_attributes

  belongs_to :seller, class_name: 'User'
  
  belongs_to :category
  
  has_many :photos, as: :imageable, :dependent => :destroy
  
  has_many :wishes, class_name: 'Wish'
  
  has_many :wishing_users, through: :wishes, source: :user
  
  has_many :carts, class_name: 'Cart'
  
  has_many :prospective_buyers, through: :carts, source: :user
  
  belongs_to :transaction
  
  accepts_nested_attributes_for :photos, allow_destroy: true
  
  validates_presence_of :brand, :size, :item_condition, :original_price, :current_price
  
  def as_json(options = {})
    
    result = super({
      include: { photos: {
          methods: :image_url
          }, primary_photo: { 
            methods: :image_url },
            seller: {
              include: { profile_pic: {
                methods: :image_url }
              }
            }, category: { }
      },
      methods: [:primary_photo, :wish, :cart]
      
    }).merge(options)
    
    result 
  end
  
  def primary_photo
    self.photos.each do |photo|
      if photo.primary_photo == true
        return photo
      end
    end
  end
  
  def set_wish(current) 
     if self.wishing_users.include?(current)
       @wishing = true
     end
  end
  
  def wish
    @wishing
  end
  
  def set_cart(current)
    if self.prospective_buyers.include?(current)
      @shopping = true
    end
  end
  
  def cart
    @shopping
  end
  
end
