class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.string :species
      t.string :breed
      t.integer :client_id
      t.integer :vet_id

      t.timestamps
    end
  end
end
