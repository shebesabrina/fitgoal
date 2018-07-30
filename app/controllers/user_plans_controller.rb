class UserPlansController < ApplicationController
  def new
    # binding.pry
    # @plan = PlanCSVReader.new(params[:plan_id])
    @plan = Plan.new
  end

  def create

  end

  def index
    current_user.plans
  end

  def show
    user_plans.find_by(params[:id])
  end
end

class Plan
  def initialize
  end

  def self.find_plan(name)
    binding.pry

  end
end
