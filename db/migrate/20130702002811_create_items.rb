class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :seller_id
      t.decimal :current_price
      t.decimal :original_price
      t.string :brand
      t.string :size
      t.string :item_condition
      t.string :delivery_type
      t.text :additional_info
      t.timestamps
      
    end
    
    add_index :items, :seller_id
    add_index :items, :current_price
    add_index :items, :size
    add_index :items, :item_condition
    
  end
end
