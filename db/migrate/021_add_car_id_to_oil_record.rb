class AddCarIdToOilRecord < ActiveRecord::Migration
  def self.up
    add_column :oil_records, :car_id, :integer
  end

  def self.down
    remove_column :oil_records, :car_id
  end
end
