class CreateCarttts < ActiveRecord::Migration[5.1]
  def change
    create_table :carttts do |t|

      t.timestamps
    end
  end
end
