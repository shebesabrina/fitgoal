class DashboardPresenter
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def temp
    weather.temp
  end

  def description
    weather.description
  end

  def city
    weather.city
  end

  private

  def weather
    @weather ||= Weather.new(user.zip)
  end
end
