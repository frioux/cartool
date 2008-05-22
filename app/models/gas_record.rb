class GasRecord < ActiveRecord::Base
  belongs_to :gas_type
  belongs_to :gas_vendor
  belongs_to :car
  attr_accessible :gallons, :odometer_reading, :date, :gas_type, :gas_type_id, :price

  after_create do |record|
    previous = GasRecord.find(:first, :conditions => ["car_id = ? AND created_at < ?", record.car.id, record.created_at], :order  => "created_at DESC")
    unless previous.nil?
      if previous.miles.nil?
        previous.miles = record.odometer_reading - previous.odometer_reading
        previous.mileage = previous.miles/previous.gallons
        unless previous.price.nil?
          previous.miles_per_dollar = previous.miles/(previous.price*previous.gallons)
        end
        previous.save
      end
    end
  end

end
