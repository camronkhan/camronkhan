require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

	def setup
		@featured_project = projects(:ePortfolio)
	end

	test 'should get home' do
		get :home
		assert_response :success
	end

	test 'should get about' do
		get :about
		assert_response :success
	end

	test 'should get education' do
		get :education
		assert_response :success
	end

	test 'should get experience' do
		get :experience
		assert_response :success
	end

	test 'should get contact' do
		get :contact
		assert_response :success
	end
end