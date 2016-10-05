class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :user_id
      t.string :bookmarks
      t.string :introduction

      t.timestamps

    end
  end
end
