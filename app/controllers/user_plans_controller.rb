class UserPlansController < ApplicationController
  def new

  end

  def index
    current_user.plans
  end

  def show
    user_plans.find_by(params[:id])
  end
end
