class CreateExchangeRates < ActiveRecord::Migration[5.2]
  def change
    create_table :exchange_rates do |t|
      t.decimal :usd
      t.decimal :eur

      t.timestamps
    end
  end
end
