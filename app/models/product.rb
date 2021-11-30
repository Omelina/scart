class Product < ApplicationRecord
    has_many :order_items
    has_many :orders through: :order_items
    before_save :pyqcheck
    validates_presence_of :id, :name, :code, :price, :quantity, :active
    validate_uniqueness_of :code
    validates_inclusion_of :active, :in => [true, false]
    validates :name, length: { maximum: 120 }

    def pyqcheck
        validates_numericality_of :price, greater_than: 0.0
        validates_numericality_of :quantity, greater_than_or_equal_to: 1
    end
end
