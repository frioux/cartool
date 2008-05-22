class AddOtherRecordToOilRecord < ActiveRecord::Migration
  def self.up
    add_column :oil_records, :other_record_id, :integer
  end

  def self.down
    remove_column :oil_records, :other_record_id
  end
end
