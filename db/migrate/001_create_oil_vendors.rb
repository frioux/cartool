class CreateOilVendors < ActiveRecord::Migration
  def self.up
    create_table :oil_vendors do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :oil_vendors
  end
end
