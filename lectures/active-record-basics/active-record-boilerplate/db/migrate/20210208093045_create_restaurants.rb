class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      # t.column_type :column_name
      t.string :name
      t.string :address
      t.timestamps # creates created_at & updated_at
    end
  end
end