class Booking < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
