class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.string :code
      t.text :description
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
