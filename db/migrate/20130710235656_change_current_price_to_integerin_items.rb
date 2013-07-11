class ChangeCurrentPriceToIntegerinItems < ActiveRecord::Migration
  def change
    change_column :items, :current_price, :integer
  end
end
