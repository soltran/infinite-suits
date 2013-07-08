class DeleteIndexFromItems < ActiveRecord::Migration
  def up
    remove_index :items, :item_condition
    remove_index :items, :size
  end

  def down
    add_index :items, :item_condition
    add_index :items, :size
  end
end
