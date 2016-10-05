class Review < ApplicationRecord
  # Direct associations

  belongs_to :booking

  belongs_to :user

  belongs_to :listing

  # Indirect associations

  # Validations

end
