class ChangeDishGroupColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :dishes, :group, :dish_group_id
  end
end
