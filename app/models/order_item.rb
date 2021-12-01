class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order
    validates_presence_of :id, :order_id, :product_id, :total, :quantity
    validates_numericality_of :quantity, greater_than_or_equal_to: 1

    def self.set_default
        self.total = 0.0
    end
end
