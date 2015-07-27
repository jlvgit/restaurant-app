class ChangeRestIdToRestaurantId < ActiveRecord::Migration
  def change
    rename_column :reservations, :rest_id, :restaurant_id
  end
end
