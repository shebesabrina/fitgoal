require 'rails_helper'

RSpec.describe "reminders/new", type: :view do
  before(:each) do
    assign(:reminder, Reminder.new(
      :name => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new reminder form" do
    render

    assert_select "form[action=?][method=?]", reminders_path, "post" do

      assert_select "input[name=?]", "reminder[name]"

      assert_select "input[name=?]", "reminder[phone_number]"
    end
  end
end
