class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :item_id
      t.string :user_id

      t.timestamps
    end
  end
end
