class ChangeStoreCatagoryStrIntoInt < ActiveRecord::Migration[6.0]
  def change
    change_column :stores, :catagory, :integer
  end
end
