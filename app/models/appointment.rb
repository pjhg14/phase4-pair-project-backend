class Appointment < ApplicationRecord
    belongs_to :renter
    belongs_to :rental
end
