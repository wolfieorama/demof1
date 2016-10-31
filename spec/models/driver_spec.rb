require 'rails_helper'

RSpec.describe Driver, type: :model do

  subject {Driver.new}
  it 'is not valid without a name' do
    expect(subject).not_to be_valid
  end

  it 'is not valid with a driver name longer than 100 symbols' do
    subject.driver_name = 'a' * 101
    expect(subject).not_to be_valid
  end

  it 'is valid with all proper data' do
    subject.driver_name = 'a' * 70
    expect(subject).to be_valid
  end
end
