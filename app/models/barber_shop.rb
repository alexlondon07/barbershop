class BarberShop < ActiveRecord::Base
validates :code, presence: true, uniqueness: true
validates :name, presence: true, uniqueness: true
validates :business_name, uniqueness: true
end
