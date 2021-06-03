class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :num_guests
end
