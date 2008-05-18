class GasVendor < ActiveRecord::Base
  has_many :gas_records
  belongs_to :user
  attr_protected :user, :user_id
end
