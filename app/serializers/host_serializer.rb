class HostSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :about

  has_many :rentals
end
