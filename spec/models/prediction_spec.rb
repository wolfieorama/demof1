require 'rails_helper'

RSpec.describe Prediction, type: :model do
  # let(:race) { Race.create(id: 1) }
  # let(:user) { User.create(id: 1) }
  subject { Prediction.new }

  it 'is a valid prediction with proper data' do
    # subject.race_id = 1
    # subject.user_id = 1
    expect(subject).to be_valid
  end

  it 'is not a valid Prediction without a race'
  it 'is not a valid prediction without a user'
  it 'is not a valid prediction without a driver1'
  it 'is not a valid prediction without a driver2'
  it 'is not a valid prediction without a driver3'
end
