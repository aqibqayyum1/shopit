class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :carttt_id
      t.integer :order_id
       t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
