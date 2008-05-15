class AddYearToCar < ActiveRecord::Migration
  def self.up
    add_column :cars, :year, :string
  end

  def self.down
    remove_column :cars, :year
  end
end
