require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :name }
  # it { should validate_presence_of :password_digest }
  it { should validate_presence_of :email }

  it "uniqueness of username" do
    orig = User.create(email: "somejoe@joe.com", password: "Password")
    copy_cat = User.new(email: "somejoe@joe.com", password: "Password")

    expect(copy_cat).to_not be_valid
  end
end
