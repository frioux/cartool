class CreateGasRecords < ActiveRecord::Migration
  def self.up
    create_table :gas_records do |t|
      t.integer :gallons
      t.integer :odometer_reading
      t.date :date
      t.integer :gas_type_id
      t.integer :gas_vendor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gas_records
  end
end
