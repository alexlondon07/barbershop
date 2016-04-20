class CreateBarberShops < ActiveRecord::Migration
  def change
    create_table :barber_shops do |t|
      t.string :code
      t.string :name
      t.string :business_name
      t.string :nit
      t.string :address
      t.string :city
      t.string :phone
      t.string :owner
      t.string :contact_name
      t.string :contact_phone1
      t.string :contact_phone2
      t.string :contact_email
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
