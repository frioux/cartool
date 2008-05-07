class AddMilesGoodToOtherRecord < ActiveRecord::Migration
  def self.up
    add_column :other_records, :miles_good, :integer
  end

  def self.down
    remove_column :other_records, :miles_good
  end
end
