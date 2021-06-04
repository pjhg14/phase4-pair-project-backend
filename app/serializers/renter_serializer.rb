class RenterSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :email, :phone
  # attribute :appointments, include: :rental

  has_many :appointments
  has_many :rentals, through: :appointments
end
