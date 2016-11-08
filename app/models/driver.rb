class Driver < ActiveRecord::Base
  has_many :signed_drivers
  has_many :teams, through: :signed_drivers

  validates :driver_name, presence: true
  validates :driver_name, length: { maximum: 100 }

  def display_name
    driver_name
  end
end
