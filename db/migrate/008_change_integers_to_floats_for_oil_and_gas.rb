class ChangeIntegersToFloatsForOilAndGas < ActiveRecord::Migration
  def self.up
    change_column :oil_records, :quarts, :float
    change_column :gas_records, :gallons, :float
  end

  def self.down
    change_column :oil_records, :quarts, :integer
    change_column :gas_records, :gallons, :integer
  end
end
