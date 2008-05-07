class CreateGasTypes < ActiveRecord::Migration
  def self.up
    create_table :gas_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :gas_types
  end
end
