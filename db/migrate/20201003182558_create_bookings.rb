class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.time :duration
      t.boolean :status
      t.integer :user_id
      t.integer :barber_id

      t.timestamps
    end
  end
end
