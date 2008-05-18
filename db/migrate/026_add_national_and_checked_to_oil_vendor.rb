class AddNationalAndCheckedToOilVendor < ActiveRecord::Migration
  def self.up
    add_column :oil_vendors, :national, :boolean
    add_column :oil_vendors, :admin_checked, :boolean
  end

  def self.down
    remove_column :oil_vendors, :admin_checked
    remove_column :oil_vendors, :national
  end
end
