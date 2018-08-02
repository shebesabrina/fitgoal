require 'rails_helper'

describe 'It sends sms' do
  response = TwilioService.new.send_sms('9703792924', 'Sup!')
  expect(response.body).to eq("Sent from your Twilio trial account - Sup!")
  expect(response.to).to eq("+19703792924")
  expect(response.from).to eq("+18432420990")
end
