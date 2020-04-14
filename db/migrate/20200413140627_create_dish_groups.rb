class CreateDishGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_groups do |t|
      t.string :name
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
