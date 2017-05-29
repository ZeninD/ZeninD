class Cart < ActiveRecord::Base

  has_many   :positions
  has_many   :items, through: :positions
  belongs_to :user

end
