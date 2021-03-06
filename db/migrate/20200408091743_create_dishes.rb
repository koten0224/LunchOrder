class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.references :store, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
