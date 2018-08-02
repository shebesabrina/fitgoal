class RemindUsers
  def initialize(time)
    @time = time
    @text_client = TwilioService.new
  end

  def send_messages
    Reminder.gather_data(@time).each do |reminder|
      workout = reminder.user.plans.order(:updated_at).first.days.first.workout
      @text_client.send_sms(reminder.phone_number, workout)
    end
  end
end
