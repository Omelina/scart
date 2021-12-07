class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order
    before_save :set_default, :actives, :productsC
    validates_presence_of :id, :order_id, :product_id, :total, :quantity
    validates_numericality_of :quantity, greater_than_or_equal_to: 1

    private
    def productsC
        comp = OrderItem.select(:product_id).where(order_id: self.order_id, product_id: self.product_id)
        if comp.length() >= 1
            raise "No se puede agregar un producto que ya fue agregado a la orden"
            throw(:abort)
        end
    end
    
    def actives
        pr = Product.find_by_id(self.product_id)
        if pr.active == false
            raise "Solo se pueden agregar productos activos"
            throw(:abort)
        end
    end

    
    def set_default
        pr = Product.find_by_id(self.product_id)
        self.total = pr.price * self.quantity
    end

    
end
