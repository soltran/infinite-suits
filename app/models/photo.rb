class Photo < ActiveRecord::Base
  attr_accessible :imageable_id, :image, :imageable_type, :primary_photo
  
  has_attached_file :image, :styles => {
      :big => "600x600>",
      :small => "150x150#"
    }
    
  belongs_to :imageable, polymorphic: true
  
  def image_url
    self.image.url
  end
  
  def url
    self.image.url(:small)
  end

  
  def as_json(options = {})
    
    result = super({
      methods: :url
      
    }).merge(options)
    
    result 
  end
  
  
end
