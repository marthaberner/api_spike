require 'faraday'
require 'json'

class Weather
  def initialize(city)
    @city = city
  end

  def forecast
    weather = Faraday.get("http://api.openweathermap.org/data/2.5/weather?q=#{@city}")
    json_string = JSON.parse(weather.body)
    json_string['weather'].first['description']
  end

  def seven_day
    outlook = Faraday.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=#{@city}&mode=json&cnt=7")
    json_output = JSON.parse(outlook.body)
    return_value = json_output['list'].map do |day|
    day['weather'].first['main']
    end
    return_value.join(", ")
  end
end



