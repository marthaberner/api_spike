require 'spec_helper'
require_relative '../weather'

describe Weather do
  it 'Displays the weather for a city' do
    @weather = Weather.new('denver,co')

    expect(@weather.forecast).to eq 'Sky is Clear'
  end
end