class AddCategorytoItems < ActiveRecord::Migration
  def create
    add_column :items, :category, :string
  end
end
