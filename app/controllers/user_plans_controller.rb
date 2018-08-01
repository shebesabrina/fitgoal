class UserPlansController < ApplicationController
  def new
    # binding.pry
    # @plan = PlanCSVReader.new(params[:plan_id])
    # @plan = Plan.new(params[:name])
  end

  def create
    @current_plan = current_user.user_plans.create(plan_id: params[:plan][:id], start_date: params[:start_date])
    redirect_to user_plan_path(@current_plan)
  end

  def index
  end

  def show
    user_plan = UserPlan.find(params[:id])
    @days = user_plan.plan.days.order(:created_at).to_json

    @start_date = user_plan.start_date.to_json
    days_count = user_plan.plan.days.count

    @calendar_days = (0...days_count).map do |n|
      date = @start_date.to_date + n.days
      {
        year: date.year,
        month: date.month,
        day: date.day
      }
    end.to_json
  end
end
