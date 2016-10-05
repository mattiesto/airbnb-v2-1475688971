class Guest < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :foreign_key => "sender_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
