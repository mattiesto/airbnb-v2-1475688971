class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :user_id
      t.string :rating
      t.integer :booking_id
      t.integer :listing_id
      t.string :accuracy_rating
      t.string :communication_rating
      t.string :cleanliness_rating
      t.string :location_rating
      t.string :check_in_rating
      t.string :value_rating

      t.timestamps

    end
  end
end
