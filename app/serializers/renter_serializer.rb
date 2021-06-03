class RenterSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :email, :phone

  has_many :appointments
end
