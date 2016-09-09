require 'test_helper'

class UsersControllerTest < ActionController::TestCase

	def setup
		@user = users(:camron)
	end

	test 'should redirect show when not logged in' do
		get :show, params: { id: @user.id }
		assert_redirected_to root_url
	end

	test 'should redirect edit when not logged in' do
		get :edit, params: { id: @user.id }
		assert_redirected_to root_url
	end
end