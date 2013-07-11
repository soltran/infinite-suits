class ChangeCurrentPriceForItems < ActiveRecord::Migration
  def change
    change_column :items, :current_price, :decimal, :precision => 8, :scale => 1
    change_column :items, :original_price, :decimal, :precision => 8, :scale => 3
  end

end
