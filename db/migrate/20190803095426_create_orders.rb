class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :count
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :stock

      t.timestamps
    end
  end
end
