class AddColToDishStyle < ActiveRecord::Migration[6.0]
  def change
    add_reference :dish_styles, :dish_group, foreign_key: true
  end
end
