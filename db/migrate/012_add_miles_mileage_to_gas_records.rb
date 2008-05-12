class AddMilesMileageToGasRecords < ActiveRecord::Migration
  def self.up
    add_column :gas_records, :miles, :integer
    add_column :gas_records, :mileage, :float
  end

  def self.down
    remove_column :gas_records, :mileage
    remove_column :gas_records, :miles
  end
end
