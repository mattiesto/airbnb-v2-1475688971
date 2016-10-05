class Host < ApplicationRecord
  # Direct associations

  has_many   :listings,
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "recipient_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
