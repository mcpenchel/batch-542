class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    # name, address, food_type (cuisine), rating
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :food_type
      t.integer :rating, default: 0, null: false

      t.timestamps
    end
  end
end