class RemindUsers
  def initialize(time)
    @time = time
    @today = Date.today
    @text_client = TwilioService.new
  end

  def text
    gather_reminders
    send_sms
  end

  def gather_reminder
    @reminders = Reminder.new(send_at: @time)
  end

  def send_messages
    message_phone_number = reminder.gather_data(@today)
  end
end
