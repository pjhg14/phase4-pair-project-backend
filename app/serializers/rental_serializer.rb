class RentalSerializer < ActiveModel::Serializer
  attributes :id, :cost, :address, :max_guests, :description, :image

  belongs_to :host
  has_many :appointments
end
