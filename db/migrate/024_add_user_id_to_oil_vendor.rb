class AddUserIdToOilVendor < ActiveRecord::Migration
  def self.up
    add_column :oil_vendors, :user_id, :integer
  end

  def self.down
    remove_column :oil_vendors, :user_id
  end
end
