class Service < ActiveRecord::Base
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  belongs_to :barber_shop
end
