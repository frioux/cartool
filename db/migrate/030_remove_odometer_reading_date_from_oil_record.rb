class RemoveOdometerReadingDateFromOilRecord < ActiveRecord::Migration
  def self.up
    remove_column :oil_records, :odometer_reading
    remove_column :oil_records, :date
  end

  def self.down
    add_column :oil_records, :odometer_reading, :integer
    add_column :oil_records, :date, :date
  end
end
