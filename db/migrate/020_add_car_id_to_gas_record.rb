class AddCarIdToGasRecord < ActiveRecord::Migration
  def self.up
    add_column :gas_records, :car_id, :integer
  end

  def self.down
    remove_column :gas_records, :car_id
  end
end
