class Renter < ApplicationRecord
    has_secure_password
    has_many :appointments
    has_many :rentals, through: :appointments
end
