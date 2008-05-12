class AddMilesPerDollarToGasRecords < ActiveRecord::Migration
  def self.up
    add_column :gas_records, :miles_per_dollar, :float
  end

  def self.down
    remove_column :gas_records, :miles_per_dollar
  end
end
