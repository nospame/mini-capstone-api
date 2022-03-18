class Supplier < ApplicationRecord
  def products
    products = Product.where(supplier_id: id)
  end
end
