require 'spec_helper'
require_relative '../weather'

describe Weather do
  it 'Displays the weather for a city' do
    @weather = Weather.new('denver,co')

    expect(@weather.forecast).to eq 'few clouds'
  end

  it 'Displays a 7 day forecast' do
    @weather = Weather.new('chicago,il')

    expect(@weather.seven_day).to eq 'Clouds, Clouds, Clouds, Rain, Rain, Clear, Rain'
  end
end