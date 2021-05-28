class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone
      t.string :about

      t.timestamps
    end
  end
end
