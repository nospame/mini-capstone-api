class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { in: 10..500 }

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def supplier
    supplier = Supplier.find_by(id: supplier_id)
  end
end
