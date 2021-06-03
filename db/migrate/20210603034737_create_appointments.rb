class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :rental_id
      t.integer :renter_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :num_guests

      t.timestamps
    end
  end
end
