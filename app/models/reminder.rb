require 'date'
# include ActionView::Helpers

class Reminder < ApplicationRecord
  belongs_to :user

  def remind_user
    start_date =  user.user_plans.last.start_date
    current_plan = user.plans.order(:updated_at).first
    until current_plan.days.last
      current_plan.days.each do |day|
        workout_today = day.workout
        reminder = "Hi #{self.user.name}. Get up and workout! Today: #{workout_today}."
      end
    end
    # start_date =  user.user_plans.last.start_date
    # TimeDifference.between(start_time, end_time).in_days
    # workout_day = start_date.each do |plan|
    #
    # end
  end

  def self.gather_data(time)
    where(set_at: time)
  end

end
