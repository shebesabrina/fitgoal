require 'date'
# include ActionView::Helpers

class Reminder < ApplicationRecord
  belongs_to :user

  def reminder_user
    # current_plan = user.user_plans.order(:start_date).first
    # workout_daytime_ago_in_words(current_plan.start_date)
    # binding.pry
    # workout_day = (DateTime.now - current_plan.start_date).to_i
    # start_date = user.user_plans.start_date
    # workout = user.user_plan.days.order(:created_at)
    # workout_day = start_date.each do |plan|
    #
    # end
    # reminder = "Hi #{self.user.name}. Just a reminder that you have  #{time_str}."
  end

  def when_to_run
    minutes_before_appointment = 30.minutes
    time - minutes_before_appointment
  end

end
