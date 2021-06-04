class RentalSerializer < ActiveModel::Serializer
  attributes :id, :cost, :address, :max_guests, :description, :image

end
