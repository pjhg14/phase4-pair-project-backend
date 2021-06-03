class Rental < ApplicationRecord
    belongs_to :host
    has_many :appointments
    has_many :renters, through: :appointments
    
end
