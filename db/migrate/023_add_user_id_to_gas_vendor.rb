class AddUserIdToGasVendor < ActiveRecord::Migration
  def self.up
    add_column :gas_vendors, :user_id, :integer
  end

  def self.down
    remove_column :gas_vendors, :user_id
  end
end
