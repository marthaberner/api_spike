require 'faraday'
require 'json'

class Weather
  def initialize(city)
    @city = city
  end

  def forecast
    weather = Faraday.get('http://api.openweathermap.org/data/2.5/weather?q=#{@city')
    json_string = JSON.parse(weather.body)
    json_string['weather'].first['description']
  end
end



