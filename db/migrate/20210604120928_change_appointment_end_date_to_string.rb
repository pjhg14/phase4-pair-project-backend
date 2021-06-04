class ChangeAppointmentEndDateToString < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :end_date, :string
  end
end
