require 'rails_helper'

RSpec.describe Project, type: :model do

	it "should be valid" do
		project = build(:project, :valid)
		expect(project).to be_valid
	end

	it "should not be valid without title" do
		project = build(:project, :no_title)
		expect(project).to_not be_valid
	end

	it "should not be valid without description" do
		project = build(:project, :no_description)
		expect(project).to_not be_valid
	end
end
