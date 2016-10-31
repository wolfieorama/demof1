class Prediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :driver
  belongs_to :race

  validates :race, presence: true
end
