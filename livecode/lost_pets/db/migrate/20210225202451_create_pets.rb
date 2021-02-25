class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.datetime :date_found
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
