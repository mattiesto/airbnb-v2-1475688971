class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :recipient_id
      t.integer :sender_id

      t.timestamps

    end
  end
end
