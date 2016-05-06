class Service < ActiveRecord::Base
  belongs_to :barber_shop

  validates :name, presence: true, uniqueness: true
  validates :barber_shop_id, presence: true
end
