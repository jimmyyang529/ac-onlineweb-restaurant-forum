class ChangeRestaurants < ActiveRecord::Migration[5.1]
  def change
  	rename_column :restaurants, :opening_hour, :opening_hours
  end
end
