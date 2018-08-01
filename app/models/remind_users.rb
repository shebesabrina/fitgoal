class RemindUsers
  def initialize(time)
    @time = time
    @text_client = TwilioService.new
  end

  def text
    gather_reminders
    send_sms
  end

  def set_reminder
    @reminders = Reminder.new(set_at: @time)
  end

  def send_messages
    Reminder.gather_data(@time).each do |reminder|
      @text_client.send_sms(reminder.phone_number, 'hi')
    end
  end
end
