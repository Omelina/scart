class OrderItem < ApplicationRecord
    require 'find'
    belongs_to :product
    belongs_to :order
    before_save :set_default
    validates_presence_of :id, :order_id, :product_id, :total, :quantity
    validates_numericality_of :quantity, greater_than_or_equal_to: 1

    # TODO finish this methods right
    def productsC
        size = OrderItem.select(:product_id,:product_id).group(:product_id,:product_id).uniq!(:group).size
        size.each do |oi|
            if oi>1
                return false
            end
            return true
        end
    end

    private
    def actives
        pr = Product.find_by_id(:product_id)
        if pr.active == false
            return false
        end
        return true
    end

    
    def self.set_default
        pr = Product.find_by_id(self.product_id)
        self.total = pr.price * self.quantity
    end

    
end
