class OilRecord < ActiveRecord::Base
  belongs_to :oil_type
  belongs_to :oil_vendor
  belongs_to :other_record
  attr_accessible :quarts, :odometer_reading, :date, :oil_type, :oil_type_id, :oil_vendor, :oil_vendor_id, :car_id

  def initialize(params={})
    super(params)
    self.other_record = OtherRecord.new({:name => "Oil Change", :miles_bad => "3000", :time_bad => 3, :time_bad_type => 'months'})
  end


end
