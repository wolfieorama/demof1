class Race < ActiveRecord::Base
  has_many :predictions

  scope :active, ->{
    where("start_time BETWEEN ? AND ?", Time.zone.now, 12.hours.from_now)
  }

end
