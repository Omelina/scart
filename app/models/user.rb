class User < ApplicationRecord
    has_secure_password
    validates_presence_of :id, :name, :lastName, :birthDate, :password, :active, :email
    validates_length_of :password, maximum: 12, minimum: 6, too_short: 'Please enter at least 6 characters'
    validates_inclusion_of :active, :in => [true, false]
    validates :email, email: true
end
