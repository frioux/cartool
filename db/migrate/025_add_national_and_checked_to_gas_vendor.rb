class AddNationalAndCheckedToGasVendor < ActiveRecord::Migration
  def self.up
    add_column :gas_vendors, :national, :boolean
    add_column :gas_vendors, :admin_checked, :boolean
  end

  def self.down
    remove_column :gas_vendors, :admin_checked
    remove_column :gas_vendors, :national
  end
end
