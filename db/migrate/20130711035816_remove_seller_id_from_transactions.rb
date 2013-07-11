class RemoveSellerIdFromTransactions < ActiveRecord::Migration
  def up
    remove_column :transactions, :seller_id
  end

  def down
    add_column :transactions, :seller_id, :integer
  end
end
