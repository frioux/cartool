class AddOdodmeterReadingToCar < ActiveRecord::Migration
  def self.up
    add_column :cars, :odometer_reading, :integer
  end

  def self.down
    remove_column :cars, :odometer_reading
  end
end
