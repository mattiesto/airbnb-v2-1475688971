class User < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_one    :guest,
             :dependent => :destroy

  has_one    :host,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
