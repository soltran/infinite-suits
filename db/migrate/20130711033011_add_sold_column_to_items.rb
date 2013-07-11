class AddSoldColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :sold, :boolean
  end
end
