class CreateVetUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :vet_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.string :crematory_name

      t.timestamps
    end
  end
end
