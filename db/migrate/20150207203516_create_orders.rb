class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_email
      t.datetime :date
      t.string :recipient_name
      t.text :recipient_address
      t.integer :price_tier
      t.string :tracking_id
      t.boolean :purchased

      t.timestamps
    end
  end
end
