class ChangeDataTypeForInputAmount < ActiveRecord::Migration[7.0]
  def self.up
    change_table :transactions do |t|
      t.change :inputAmount, :float
      end
  end
  def self.down
    change_table :transactions do |t|
      t.change :inputAmount, :decimal
    end
  end
end
