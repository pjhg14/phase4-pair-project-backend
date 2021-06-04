class ChangeAppointmentStartDateToString < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :start_date, :string
  end
end
