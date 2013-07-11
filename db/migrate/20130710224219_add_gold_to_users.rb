class AddGoldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gold, :integer
  end
end
