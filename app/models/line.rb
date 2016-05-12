class Line < ActiveRecord::Base
  belongs_to :barber_shop
  belongs_to :subline
end
