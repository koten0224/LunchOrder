class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true
      t.integer :total_price
      t.integer :payed
      t.string :description

      t.timestamps
    end
  end
end
