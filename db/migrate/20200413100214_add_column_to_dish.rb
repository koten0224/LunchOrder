class AddColumnToDish < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :group, :string
    add_reference :dishes, :dish_style, default: 1, null: false, foreign_key: true
  end
end
