class Driver < ActiveRecord::Base
  has_many :signed_drivers
  has_many :teams, through: :signed_drivers
  has_many :predictions

  def display_name
    driver_name
  end
end
