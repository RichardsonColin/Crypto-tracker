class CreateCryptos < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptos do |t|
      t.string :crypto
      t.decimal :amount
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
