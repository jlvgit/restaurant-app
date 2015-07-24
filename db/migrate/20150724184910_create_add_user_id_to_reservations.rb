class CreateAddUserIdToReservations < ActiveRecord::Migration
  def change
    create_table :add_user_id_to_reservations do |t|

      t.timestamps null: false
    end
  end
end
