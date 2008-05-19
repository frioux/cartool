class AddDateGoodToOtherRecords < ActiveRecord::Migration
  def self.up
    add_column :other_records, :date_good, :date
  end

  def self.down
    remove_column :other_records, :date_good
  end
end
