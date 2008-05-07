class CreateOtherRecords < ActiveRecord::Migration
  def self.up
    create_table :other_records do |t|
      t.string :name
      t.text :description
      t.integer :odometer_reading
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :other_records
  end
end
