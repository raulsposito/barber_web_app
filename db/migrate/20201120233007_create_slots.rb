class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.boolean :available
      t.datetime :start_time
      t.integer :duration
      t.integer :barber_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
