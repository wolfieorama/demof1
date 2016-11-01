class Prediction < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :drivers
  belongs_to :race

  # validates :race_id, presence: true
  # validates :user_id, presence: true
end
