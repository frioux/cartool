class AddPriceToGasRecords < ActiveRecord::Migration
  def self.up
    add_column :gas_records, :price, :decimal, :precision => 4, :scale => 2 # max of 99.99 bucks
  end

  def self.down
    remove_column :gas_records, :price
  end
end
