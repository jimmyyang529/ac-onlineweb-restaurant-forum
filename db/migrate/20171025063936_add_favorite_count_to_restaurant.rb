class AddFavoriteCountToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :favorites_count, :integer, :default => 0
        Restaurant.pluck(:id).each do |i|
        Restaurant.reset_counters(i, :favorites) # 全部重算一次
      end
  end
end
