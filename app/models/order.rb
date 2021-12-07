class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :products, through: :order_items
    before_save :random, :setDefault, :dateformat
    validates_presence_of :id, :orderNumber, :user_id, :date, :total, :active
    validates_inclusion_of :active, :in => [true, false]
    validates :orderNumber, :numericality => { greater_than: 100000}
    validates :orderNumber, uniqueness: true
    validate :checkA

    def deactivate(id)
        o = Order.find(id)
        if o.active == true
            o.update_attribute(:active, false)
        else
            "The order is already deactivated"
        end
    end

    private
    def dateformat
        self.date = Time.now.strftime("%Y-%m-%d").to_date
    end

    def random 
        self.orderNumber = loop do
        number = rand(100000..99999999)
        break number unless Order.exists?(orderNumber: number) 
        end
        
    end

    def setDefault 
        if order_items.count > 0
            t = order_items.sum { |obj| obj.total }
            self.total = t
        else
            self.total = 0.0
        end
    end

    def checkA
        orders = Order.all
        orders.each do |o|
            if self.user_id == o.user_id && o.active == true 
                raise "Order cannot be saved if the user has another order active"
                throw(:abort)
            end
        end
    end

end
