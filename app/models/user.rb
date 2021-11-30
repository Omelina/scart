class User < ApplicationRecord
    require 'date'
    # has_many :orders
    has_secure_password
    validates_presence_of :id, :name, :lastName, :birthDate, :password, :active, :email
    validates_length_of :password, maximum: 12, minimum: 6, too_short: 'Please enter at least 6 characters'
    validates_length_of :name, :lastName, maximum: 120, too_long: 'Please enter a shorter name'
    validates_inclusion_of :active, :in => [true, false]
    validates :email, email: true
    validate :dateformat

    def dateformat
        _now = Time.now.strftime("%Y-%m-%d").to_date
        if :birthDate > :now
            return 'Please enter a valid date'
        end
    end
end
