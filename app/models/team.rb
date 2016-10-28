class Team < ActiveRecord::Base
  has_many :signed_drivers
  has_many :drivers, through: :signed_drivers

  def display_name
    team_name
  end
end
