class Item < ActiveRecord::Base
  attr_accessible :additional_info, :brand, :current_price, :delivery_type, :item_condition, :original_price, :seller_id, :size, :category_id, :photos_attributes

  belongs_to :seller, class_name: 'User'
  
  belongs_to :category
  
  has_many :photos, as: :imageable, :dependent => :destroy
  
  has_many :wishes, class_name: 'Wish'
  
  has_many :wishing_users, through: :wishes, source: :user
  
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
            },
      },
      methods: [:primary_photo, :wish]
      
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
  
  def wished?(current) 
     if self.wishing_users.include?(current)
       @truth = true
     end
  end
  
  def wish
    @truth
  end
  
  def cart?
    
  end
  
end
