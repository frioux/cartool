class OilVendor < ActiveRecord::Base
  has_many :oil_records
  belongs_to :user
end
