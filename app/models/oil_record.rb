class OilRecord < ActiveRecord::Base
  belongs_to :oil_type
  belongs_to :oil_vendor
  attr_accessible :quarts, :odometer_reading, :date, :oil_type, :oil_type_id, :oil_vendor, :oil_vendor_id
end
