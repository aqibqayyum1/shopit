class CreateOrderrrs < ActiveRecord::Migration[5.1]
  def change
    create_table :orderrrs do |t|
      t.string :name
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
