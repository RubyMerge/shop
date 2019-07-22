class CreateMyShops < ActiveRecord::Migration[5.2]
  def change
    create_table :my_shops do |t|
      t.string :page_name
      t.text :page

      t.timestamps
    end
  end
end
