require 'rails_helper'

RSpec.describe Prediction, type: :model do
  it 'is not valid if Prediction without a race' do
    prediction = Prediction.new
    prediction.race = nil
    expect(prediction).not_to be_valid
  end
end
