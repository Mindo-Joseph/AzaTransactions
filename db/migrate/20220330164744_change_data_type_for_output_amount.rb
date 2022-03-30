class ChangeDataTypeForOutputAmount < ActiveRecord::Migration[7.0]
  def self.up
    change_table :transactions do |t|
      t.change :outputAmount, :float
    end
  end
  def self.down
    change_table :transactions do |t|
      t.change :outputAmount, :decimal
    end
  end
end
