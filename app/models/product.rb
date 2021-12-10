class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    validates_presence_of :id, :name, :code, :price, :quantity, :active
    validates :active, inclusion: { in: [true, false]}
    validates :name, length: { maximum: 120 }
    validates :price, :numericality => {greater_than: 0.0}
    validates :quantity, :numericality => {greater_than_or_equal_to: 1}
    validates :code, :uniqueness => true

    def deactivate(id)
        pro = Product.find(id)
        if pro.active 
            pro.update_attribute(:active, false)
        else
            "The product is already deactivated"
        end
    end

end
