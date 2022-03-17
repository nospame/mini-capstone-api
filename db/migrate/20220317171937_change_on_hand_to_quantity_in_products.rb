class ChangeOnHandToQuantityInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :on_hand, :quantity
  end
end
