class LineItem < ApplicationRecord

belongs_to :product
references :product, foreign_key: true
belongs_to :carttt
belongs_to :orderrr

 def total_price
    self.quantity * self.product.price
  end

end
