class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :listing_id
      t.date :date
      t.integer :price_alternative
      t.integer :guest_id
      t.string :book_yn
      t.string :requests

      t.timestamps

    end
  end
end
