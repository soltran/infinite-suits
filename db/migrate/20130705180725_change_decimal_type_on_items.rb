class ChangeDecimalTypeOnItems < ActiveRecord::Migration
  def change
    change_column :items, :current_price, :decimal, :precision => 8, :scale => 2
    change_column :items, :original_price, :decimal, :precision => 8, :scale => 2
  end
end
