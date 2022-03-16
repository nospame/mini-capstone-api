class ChangeInventoryToOnHand < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :inventory, :on_hand
  end
end
