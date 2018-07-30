class UserPlansController < ApplicationController
  def new
    # binding.pry
    # @plan = PlanCSVReader.new(params[:plan_id])
    # @plan = Plan.new(params[:name])
  end

  def create
    @current_plan = current_user.user_plans.create(plan_id: params[:plan][:id], start_date: params[:start_date])
    redirect_to user_plans_path(current_user)
  end

  def index
    @days = current_user.plans.first.days
    # binding.pry
    @plans = current_user.plans
  end

  def show
    user_plans.find_by(params[:id])
  end
end
#
# class Plan
#   attr_accessor :name
#
#   def initialize(attr)
#     @name = attr[:name]
#   end
#
#   def self.find_plan(file_path)
#     binding.pry
#     PlanCSVReader.new(file_path)
#
#   end
# end
