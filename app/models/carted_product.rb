class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :product

  def price
    product.price * quantity
  end

  def tax
    product.tax * quantity
  end
  
  def total
    product.total * quantity
  end
end
