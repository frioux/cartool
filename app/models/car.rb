class Car < ActiveRecord::Base
  require 'andand'
  belongs_to :user
  has_many :oil_records
  has_many :gas_records
  has_many :other_records
  attr_accessible :make, :model, :name, :year

  def odometer_reading
    return [
      self.gas_records.find(:first, :order => "created_at DESC").andand.odometer_reading || 0,
      self.other_records.find(:first, :order => "created_at DESC").andand.odometer_reading || 0
    ].max
  end

  def oil?(delta_miles = 0, delta_days = 0)
    return true if OilRecord.find(:first, :order => "created_at DESC", :joins => :other_record, :conditions => ["other_records.odometer_reading_bad < ? OR other_records.date_good < ?", self.odometer_reading + delta_miles, delta_days.days.from_now])
    return false
  end

  def todo_list(delta_miles = 0, delta_days = 0)
    return OtherRecord.find(:all, :order => "created_at", :conditions => ["odometer_reading_bad < ? OR date_good < ?", self.odometer_reading + delta_miles, delta_days.days.from_now])
  end
end
