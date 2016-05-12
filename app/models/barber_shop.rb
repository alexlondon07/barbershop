class BarberShop < ActiveRecord::Base
# belongs_to :line, dependent: :destroy
# belongs_to :service, dependent: :destroy

has_many :line, dependent: :destroy
has_many :service, dependent: :destroy

validates :code, presence: true, uniqueness: true
validates :name, presence: true, uniqueness: true
validates :business_name, uniqueness: true
end
