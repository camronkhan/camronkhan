require 'rails/helper'

feature 'user logs in' do

	scenario 'with invalid email and password' do
		login_with 'email@example.com', '12345678'
		expect(flash).to be_empty
	end

	private

		def login_with(email, password)
			visit login_path
			fill_in 'Email', with: email
			fill_in 'Password', with: password
			click_button 'Log In'
		end
end