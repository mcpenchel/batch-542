class AddRatingToRestaurants < ActiveRecord::Migration[6.0]
  def change
    # syntax is
    # add_column :table_name, :column_name, :column_type
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end