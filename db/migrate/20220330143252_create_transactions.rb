class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :customerID
      t.decimal :inputAmount
      t.string :inputCurrency
      t.decimal :outputAmount
      t.string :outputCurrency
      t.datetime :date

      t.timestamps
    end
  end
end
