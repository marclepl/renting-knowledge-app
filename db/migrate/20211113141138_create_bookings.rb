class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.bigint :user_id
      t.bigint :book_id

      t.timestamps
    end
  end
end
