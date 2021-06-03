class CreateRenters < ActiveRecord::Migration[6.1]
  def change
    create_table :renters do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
