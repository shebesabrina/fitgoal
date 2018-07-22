class DashboardController < ApplicationController
  def show
    # binding.pry
    @presenter = DashboardPresenter.new(current_user)
    unless current_user
      redirect_to root_path
    end
  end
end
