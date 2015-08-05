class ChangeTypeOfDateAndTimeInReservations < ActiveRecord::Migration
  def change
    drop_table :add_user_id_to_reservations
    change_column :reservations, :date, :datetime
    change_column :reservations, :time, :datetime
  end
end
