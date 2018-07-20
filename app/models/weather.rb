class Weather
  attr_reader :zip

  def initialize(zip)
    @zip = zip
  end

  def data
    service = WeatherService.new(zip).current_weather





    # response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=#{ENV['API_KEY']}&units=imperial")
    # JSON.parse(response.body)
  end

  def temp
    data['main']['temp'].to_i
  end

  def description
    data['weather'].first['description']
  end

  def city
    data['name']
  end
end
