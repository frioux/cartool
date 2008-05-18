class GasVendor < ActiveRecord::Base
  has_many :gas_records
  belongs_to :user
end
