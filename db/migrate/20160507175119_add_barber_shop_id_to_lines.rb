class AddBarberShopIdToLines < ActiveRecord::Migration
  def change
    add_reference :lines, :barber_shop, index: true, foreign_key: true
  end
end
