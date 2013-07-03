class ChangeItemIdToImageableIdInPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :item_id, :imageable_id
    add_column :photos, :imageable_type, :string
  end
end
