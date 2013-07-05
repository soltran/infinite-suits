class AddPrimaryPhotoToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :primary_photo, :boolean
  end
end
