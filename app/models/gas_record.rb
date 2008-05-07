class GasRecord < ActiveRecord::Base
  belongs_to :gas_type
  belongs_to :gas_vendor
end
