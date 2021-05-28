class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.integer :host_id
      t.float :cost
      t.string :address
      t.integer :max_guests
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
