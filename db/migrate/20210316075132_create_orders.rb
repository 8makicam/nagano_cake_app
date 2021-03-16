class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false, foreign_key: true
      t.integer :shipping, null: false
      t.integer :billing_amount, null: false
      t.integer :payment_method, null: false
      t.string :addressee, null: false
      t.string :shipping_address, null: false
      t.string :shipping_post_code, null: false
      t.integer :order_status, null: false

      t.timestamps
    end
  end
end
