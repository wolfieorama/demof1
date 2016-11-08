require 'rails_helper'

RSpec.feature 'home' do
  scenario 'unauthenticated user' do
    visit root_path
    within '#title' do
      expect(find('#choices')).to have_content('Choices F1 Club')
      expect(find('#fans')).to have_content('Formula 1 for the Fans in Kenya')
    end
  end

  scenario 'another unauthenticated user' do
    visit root_path
    expect(find('#predict')).to have_content('Start Predicting')
  end
end
