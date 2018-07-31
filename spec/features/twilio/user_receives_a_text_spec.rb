# require 'rails_helper'
# this is how I need to test it
# allow_any_instance_of(TwilioService).to_have_received(:send_sms).with(number)
#
# This is the example that I stumbled upon.
# RSpec.describe "An invitiation" do
#   let(:invitation) { spy("invitation") }
#
#   before do
#     invitation.deliver("foo@example.com")
#     invitation.deliver("bar@example.com")
#   end
#
#   it "passes when a count constraint is satisfied" do
#     expect(invitation).to have_received(:deliver).twice
#   end
#
#   it "passes when an order constraint is satisifed" do
#     expect(invitation).to have_received(:deliver).with("foo@example.com").ordered
#     expect(invitation).to have_received(:deliver).with("bar@example.com").ordered
#   end
#
#   it "fails when a count constraint is not satisfied" do
#     expect(invitation).to have_received(:deliver).at_least(3).times
#   end
#
#   it "fails when an order constraint is not satisifed" do
#     expect(invitation).to have_received(:deliver).with("bar@example.com").ordered
#     expect(invitation).to have_received(:deliver).with("foo@example.com").ordered
#   end
# end
