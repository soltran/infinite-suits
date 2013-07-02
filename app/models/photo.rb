class Photo < ActiveRecord::Base
  attr_accessible :item_id, :item_photo, :primary_photo
  
  has_attached_file :item_photo, :styles => {
      :big => "600x600>",
      :small => "50x50#"
    }
    
  belongs_to :item
  
end
