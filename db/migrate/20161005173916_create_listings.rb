class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :room_or_home
      t.string :description
      t.string :number_of_rooms
      t.string :number_of_bathrooms
      t.string :number_of_beds
      t.string :max_occupants
      t.string :city
      t.string :neighborhood
      t.string :policies
      t.string :default_price
      t.integer :host_id

      t.timestamps

    end
  end
end
