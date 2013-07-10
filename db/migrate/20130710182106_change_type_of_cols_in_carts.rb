class ChangeTypeOfColsInCarts < ActiveRecord::Migration
  def up
    remove_column :carts, :user_id
    remove_column :carts, :item_id
    add_column :carts, :item_id, :integer
    add_column :carts, :user_id, :integer
  end
  
  def down
    remove_column :carts, :user_id
    remove_column :carts, :item_id
    add_column :carts, :item_id, :string
    add_column :carts, :user_id, :string
  end
end
