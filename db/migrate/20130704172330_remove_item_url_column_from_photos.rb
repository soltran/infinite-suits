class RemoveItemUrlColumnFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :image_url
  end

  def down
    add_column :photos, :image_url, :string
  end
end
