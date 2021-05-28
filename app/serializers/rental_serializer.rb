class RentalSerializer < ActiveModel::Serializer
  attributes :id, :host_id, :cost, :address, :max_guests, :description, :image
end
