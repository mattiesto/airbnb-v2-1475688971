class Listing < ApplicationRecord
  # Direct associations

  belongs_to :host

  has_many   :reviews,
             :dependent => :destroy

  has_many   :bookings,
             :dependent => :destroy

  has_many   :pictures,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
