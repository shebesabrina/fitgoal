class RemindUsers
  def initialize(time)
    @time = time
    @text_client = TwilioService.new
  end

  def send_messages
    Reminder.gather_data(@time).each do |reminder|
      @text_client.send_sms(reminder.phone_number, reminder.remind_user)
    end
  end
end
