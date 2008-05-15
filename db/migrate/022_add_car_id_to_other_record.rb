class AddCarIdToOtherRecord < ActiveRecord::Migration
  def self.up
    add_column :other_records, :car_id, :integer
  end

  def self.down
    remove_column :other_records, :car_id
  end
end
