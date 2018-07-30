class UserPlansController < ApplicationController
  def new

  end

  def create

  end

  def index
    plan = PlanCSVReader.new(params)
    # current_user.plans
  end

  def show
    user_plans.find_by(params[:id])
  end
end
