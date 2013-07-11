class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :seller_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
