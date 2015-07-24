class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :email
      t.string :date
      t.string :time
      t.integer :guests
      t.string :comment

      t.timestamps null: false
    end
  end
end
