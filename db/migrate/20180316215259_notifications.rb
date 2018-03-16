class Notifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :rdvm_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
