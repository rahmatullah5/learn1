class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def add_product(product)
    curent_item = line_items.find_by(product_id: product.id)
    if curent_item
      curent_item.quantity += 1
    else
      curent_item = line_items.build(product_id: product.id)
    end
    curent_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

  def total_item
    line_items.to_a.sum { |item| item.quantity }
  end
end
