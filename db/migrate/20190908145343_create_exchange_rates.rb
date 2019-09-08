class CreateExchangeRates < ActiveRecord::Migration[6.0]
  def change
    create_table :exchange_rates do |t|
      t.numeric :buy
      t.numeric :sell
      t.string :from_currency
      t.string :to_currency

      t.timestamps
    end
  end
end
