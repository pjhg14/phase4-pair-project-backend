class Host < ApplicationRecord
    has_many :rentals

    has_secure_password
end