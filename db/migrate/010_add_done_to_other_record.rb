class AddDoneToOtherRecord < ActiveRecord::Migration
  def self.up
    add_column :other_records, :done, :boolean
    rename_column :other_records, :miles_good, :odometer_reading_bad
    OtherRecord.find(:all).each { |record|
      record.odometer_reading_bad += record.odometer_reading
      record.save!
    }
  end

  def self.down
    remove_column :other_records, :done
    rename_column :other_records, :odometer_reading_bad, :miles_good
    OtherRecord.reset_column_information
    OtherRecord.find(:all).each { |record|
      record.odometer_reading_bad -= record.odometer_reading
      record.save!
    }
  end
end
