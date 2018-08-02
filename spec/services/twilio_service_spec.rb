require 'rails_helper'

describe TwilioService do
  it 'sends sms messages' do
    service = spy("Twilio::REST::Client")
    
    allow("Twilio::REST::Client").to receive(:phone_number).and_return(service)
    token = "fake token"

    post :create, twilio_token: token

    expect(service).to have_received(:body).with(token)

    # response = TwilioService.new.send_sms('9703792924', 'Sup!')
    #
    # expect(response.body).to eq("Sent from your Twilio trial account - Sup!")
    # expect(response.to).to eq("+19703792924")
    # expect(response.from).to eq("+18432420990")
  end
end
