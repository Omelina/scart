class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order
    validates_presence_of :id, :order_id, :product_id, :total, :quantity
    before_save :set_default
    validates_numericality_of :quantity, greater_than_or_equal_to: 1
    def set_default
        :total = 0.0
    end
end
