class OilRecord < ActiveRecord::Base
  belongs_to :oil_type
  belongs_to :oil_vendor
end
