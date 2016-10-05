class Booking < ApplicationRecord
  # Direct associations

  belongs_to :guest

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :listing

  # Indirect associations

  # Validations

end
