class BarberShop < ActiveRecord::Base
has_many :line, dependent: :destroy
has_many :service, dependent: :destroy

validates :code, presence: true, uniqueness: true
validates :name, presence: true, uniqueness: true
validates :business_name, uniqueness: true
end
