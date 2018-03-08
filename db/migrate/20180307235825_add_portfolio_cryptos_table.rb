class AddPortfolioCryptosTable < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolio_cryptos do |t|
      t.integer :portfolio_id
      t.integer :crypto_id
    end
  end
end
