class UserPlansController < ApplicationController

  def index
    binding.pry
    current_user.plans
  end

  def show
    user_plans.find_by(params[:id])
  end
end
