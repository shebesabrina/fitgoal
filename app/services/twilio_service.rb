class TwilioService
  def initialize
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new, ENV['TWILIO_AUTH_TOKEN'], ENV['TWILIO_ACCOUNT_SID']
  end

  def send_sms(phone_number, message)
    client_account = @client.api.account
     message = client_account.messages.create(
      :from => @twilio_number,
      :to => phone_number,
      :body => message,
    )
  end
end
