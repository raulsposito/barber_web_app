class AddDateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :date, :datetime
  end
end
