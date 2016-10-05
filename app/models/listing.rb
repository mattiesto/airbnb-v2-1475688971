class Listing < ApplicationRecord
  # Direct associations

  has_many   :pictures,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
