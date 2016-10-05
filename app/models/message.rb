class Message < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "Guest"

  belongs_to :recipient,
             :class_name => "Host"

  # Indirect associations

  # Validations

end
