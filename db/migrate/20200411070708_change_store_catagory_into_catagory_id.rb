class ChangeStoreCatagoryIntoCatagoryId < ActiveRecord::Migration[6.0]
  def change
    rename_column :stores, :catagory, :catagory_id
  end
end
