class CreateOilRecords < ActiveRecord::Migration
  def self.up
    create_table :oil_records do |t|
      t.integer :quarts
      t.integer :odometer_reading
      t.date :date
      t.integer :oil_type_id
      t.integer :oil_vendor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :oil_records
  end
end
