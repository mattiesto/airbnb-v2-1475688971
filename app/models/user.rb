class User < ApplicationRecord
  # Direct associations

  has_one    :host,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
