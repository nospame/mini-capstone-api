class ChangeDefaultDollarAmountsToZeroInOrder < ActiveRecord::Migration[7.0]
  def change
    change_column_default :orders, :subtotal, 0
    change_column_default :orders, :tax, 0
    change_column_default :orders, :total, 0
  end
end
