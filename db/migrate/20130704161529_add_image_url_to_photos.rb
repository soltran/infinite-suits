class AddImageUrlToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image_url, :string
  end
end
