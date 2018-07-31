# class MessageSender
#   def initialize(argument)
#     #initialize twilio client
#     account_sid = ENV['TWILIO_ACCOUNT_SID']
#     auth_token = ENV['TWILIO_AUTH_TOKEN']
#     @client = Twlio::REST::Client.new(account_sid, auth_token)
#   end
#
#   def self.send_message(order_id, host, to, message)
#     new.send_message(order_id, host, to, message)
#   end
#
#   def send_message(order_id, host, to, message)
#     @client.account.messages.create(
#       from: ENV['TWILIO_NUMBER'],
#       to: to,
#       bodyL message,
#       status_callback: "http://#{host}/orders/#{order_id}status"
#     )
#   end
# end
