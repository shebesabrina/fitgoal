class RemindUsers
  def initialize(time)
    @time = time
    @text_client = TwilioService.new
  end

  def send_messages
    Reminder.gather_data(@time).each do |reminder|
<<<<<<< HEAD
      @text_client.send_sms(reminder.phone_number, reminder.remind_user)
=======
      @text_client.send_sms(reminder.phone_number, 'hi')
>>>>>>> 3c1be5bdb06e5eea3f3f73c31f57d43eefdf9301
    end
  end
end
