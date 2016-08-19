require 'rails_helper'

RSpec.describe User, type: :model do

	it "should be valid" do
		user = build(:user, :valid)
		expect(user).to be_valid
	end

	it "should not be valid without name" do
		user = build(:user, :no_name)
		expect(user).to_not be_valid
	end

	it "should not be valid without email" do
		user = build(:user, :no_email)
		expect(user).to_not be_valid
	end

	it "should not have a name > 63 characters" do
		user = build(:user, :long_name)
		expect(user).to_not be_valid
	end

	it "should not have an email > 255 characters" do
		user = build(:user, :long_email)
		expect(user).to_not be_valid
	end

	it "should not have a password < 6 characters" do
		user = build(:user, :short_password)
	end

	it { is_expected.to validate_presence_of(:name) }

	it { is_expected.to validate_presence_of(:email) }

	it { is_expected.to validate_presence_of(:password) }
end