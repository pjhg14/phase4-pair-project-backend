class HostSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :about
  # has_secure_password 

  has_many :rentals
end

# ActiveModelSerializers.config.default_includes = '**'