class OrderItem < ApplicationRecord
    validates_presence_of :id, :order_id, :product_id, :total, :quantity
    before_save :set_default
    validates :quantity, length: { maximum: 30 }
    def set_default
        :total = 0.0
    end
end
