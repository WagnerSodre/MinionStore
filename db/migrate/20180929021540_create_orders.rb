class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :product_id

      t.timestamps
    end
  end
end
