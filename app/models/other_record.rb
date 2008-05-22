class OtherRecord < ActiveRecord::Base
  DURATIONS = ["days", "weeks", "months"]
  belongs_to :car
  attr_accessor :time_bad, :miles_bad, :time_bad_type
  attr_accessible :name, :description, :odometer_reading, :date, :done, :car, :car_id, :time_bad, :miles_bad, :time_bad_type

  before_save :set_date_bad, :set_odometer_reading_bad

  def todo

  end

  private

  def set_date_bad
    return unless time_bad.to_i > 0
    return unless DURATIONS.include?(time_bad_type)
    self.date_good = time_bad.to_i.send(time_bad_type).from_now
    puts date_good
  end

  def set_odometer_reading_bad
    return unless miles_bad.to_i > 0
    self.odometer_reading_bad = odometer_reading + miles_bad.to_i
    puts odometer_reading_bad
  end
end
