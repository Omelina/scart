class Order < ApplicationRecord
    require 'find'
    belongs_to :user
    has_many :order_items
    has_many :products, through: :order_items
    before_save :random, :setDefault, :dateformat
    validates_presence_of :id, :orderNumber, :user_id, :date, :total, :active
    validates_inclusion_of :active, :in => [true, false]
    validates :orderNumber, :numericality => { greater_than: 100000}
    validates :orderNumber, uniqueness: true

    def dateformat
        self.date = Time.now.strftime("%Y-%m-%d").to_date
    end

    def random 
        self.orderNumber = loop do
           number = rand(100000..999999999999999999)
           break number unless self.orderNumber.exists?(orderNumber: number) 
        end
        
    end

    def setDefault 
        if order_items.count > 0.0
            t = order_items.sum { |obj| obj.total }
            self.total = t
        else
            self.total = 0.0
        end
    end

    def checkA(id)
        u = User.find(id)
        puts u.id
        if self.active = true && self.user_id == u.id
            return true
        end
        return false
    end
end
