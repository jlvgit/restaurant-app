class AddRestaurantIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :rest_id, :integer
  end
end
