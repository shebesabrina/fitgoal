class WeatherService

  def initialize(zip)
    @zip = zip
  end

  def current_weather
    response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?zip=#{@zip}&APPID=#{ENV['API_KEY']}&units=imperial")
    JSON.parse(response.body)
  end
end
