class RemindUsers
  def initialize(attr)
    @time = attr[:set_at]
    @phone_number = attr[:phone_number]
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
    message_phone_number = reminder.gather_data(@today)
  end
end
