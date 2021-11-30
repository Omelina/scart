class Order < ApplicationRecord
    # belongs_to :user
    before_save :set_default, :random
    validates_presence_of :id, :orderNumber, :user_id, :date, :total, :active
    validates_inclusion_of :active, :in => [true, false]
    validates :orderNumber, :numericality => { greater_than: 100000}
    validate :dateformat
    validates :orderNumber, uniqueness: true

    def dateformat
        :date = Time.now.strftime("%Y-%m-%d").to_date
    end

    def random 
        self.orderNumber = loop do
           number = rand(100000..999999999999999999)
           break number unless Case.exists?(orderNumber: number) 
        end
        
    end

    def set_default
        :total = 0.0
    end
end
