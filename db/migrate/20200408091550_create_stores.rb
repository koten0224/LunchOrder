class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :adress
      t.string :tel
      t.string :catagory
      t.integer :author_id
      t.string :description

      t.timestamps
    end
  end
end
