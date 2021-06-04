class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :renter_id, :rental_id, :start_date, :end_date, :num_guests

  belongs_to :rental
end
