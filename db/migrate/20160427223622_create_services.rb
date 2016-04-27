class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :code
      t.float :price
      t.text :description
      t.boolean :enable
      t.references :barber_shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
