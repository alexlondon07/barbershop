class CreateSublines < ActiveRecord::Migration
  def change
    create_table :sublines do |t|
      t.string :name
      t.string :code
      t.text :description
      t.references :line, index: true, foreign_key: true
      t.boolean :enable

      t.timestamps null: false
    end
  end
end
