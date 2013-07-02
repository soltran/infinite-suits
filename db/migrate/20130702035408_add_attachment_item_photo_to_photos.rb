class AddAttachmentItemPhotoToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :item_photo
    end
  end

  def self.down
    drop_attached_file :photos, :item_photo
  end
end
