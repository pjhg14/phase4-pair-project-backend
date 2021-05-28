class HostSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :email, :phone, :about
end
