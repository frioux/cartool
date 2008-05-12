class GasRecord < ActiveRecord::Base
  belongs_to :gas_type
  belongs_to :gas_vendor

  after_create do |record|
    previous = GasRecord.find(:first, :conditions => ["id < ?", record.id], :order  => "id DESC")
    unless previous.nil?
      if previous.miles.nil?
        previous.miles = record.odometer_reading - previous.odometer_reading
        previous.mileage = previous.miles/previous.gallons
        unless previous.price.nil?
          previous.miles_per_dollar = previous.miles/previous.price
        end
        previous.save
      end
    end
  end
end
