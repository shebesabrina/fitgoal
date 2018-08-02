require 'rails_helper'

describe TwilioService do
  it 'sends sms messages' do
    service = spy("Twilio::REST::Client")
    allow("Twilio::REST::Client").to receive(:retrieve).and_return(stripe_customer)
    token = "fake token"

    stub_request(:post, "https://api.twilio.com/2010-04-01/Accounts/AC4ee6b18bbf5482d269109fa8c4c6cbf7/Messages.json").
      with(
        body: {"Body"=>"Sup!", "From"=>"18432420990", "To"=>"9703792924"},
        headers: {
       'Accept'=>'application/json',
       'Accept-Charset'=>'utf-8',
       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       'Authorization'=>'Basic QUM0ZWU2YjE4YmJmNTQ4MmQyNjkxMDlmYThjNGM2Y2JmNzo4MzgwMjQ2ZWViOTFhOTQwYjNjMDc0MTRmMmQ5ZjUzZg==',
       'Content-Type'=>'application/x-www-form-urlencoded',
       'User-Agent'=>'twilio-ruby/5.11.2 (ruby/x86_64-darwin17 2.4.1-p111)'
        }).
      to_return(status: 200, body: "Sup!", headers: {})
      binding.pry
    # response = TwilioService.new.send_sms('9703792924', 'Sup!')
    #
    # expect(response.body).to eq("Sent from your Twilio trial account - Sup!")
    # expect(response.to).to eq("+19703792924")
    # expect(response.from).to eq("+18432420990")
  end
end
