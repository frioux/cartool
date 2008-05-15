class Car < ActiveRecord::Base
  belongs_to :user
  has_many :oil_records
  has_many :gas_records
  has_many :other_records
end
