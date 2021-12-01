class User < ApplicationRecord
    require 'date'
    require 'find'
    has_many :orders
    has_many :order_items, through: :orders
    has_secure_password
    validates_presence_of :id, :name, :lastName, :birthDate, :password, :active, :email
    validates_length_of :password, maximum: 12, minimum: 6, too_short: 'Please enter at least 6 characters'
    validates_length_of :name, :lastName, maximum: 120, too_long: 'Please enter a shorter name'
    validates_inclusion_of :active, :in => [true, false]
    validates :email, email: true
    validate :dateformat

    scope :justactives, -> { where(:active => true)}

    def self.dateformat
        _now = Time.now.strftime("%Y-%m-%d").to_date
        if :birthDate > :now
            return 'Please enter a valid date'
        end
    end

    def deactivate(id)
        user = User.find(id)
        if user.active == true
            user.update_attribute(:active, false)
        else
            "The user is already deactivated"
        end
    end

    def age(id)
        user= User.find(id)
        age= ((Time.zone.now - user.birthDate.to_time) / 1.year.seconds).floor
        return "The user #{user.name} has #{age} years old"
    end
end
