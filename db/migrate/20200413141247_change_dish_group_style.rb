class ChangeDishGroupStyle < ActiveRecord::Migration[6.0]
  def change
    remove_column :dishes, :dish_group_id
    add_reference :dishes, :dish_group, default: 1, null: false, foreign_key: true
  end
end
