require 'rails_helper'

RSpec.feature 'user logs in', type: :feature do

	scenario 'with invalid email and password' do
		login_with 'email@example.com', '12345678'
		expect(page).to have_content('Invalid email/password combination')
		# Ensure flash does not persist across pages
		visit root_path
		visit login_path
		expect(page).to_not have_content('Invalid email/password combination')
	end

	private

		def login_with(email, password)
			visit login_path
			fill_in 'Email', with: email
			fill_in 'Password', with: password
			click_button 'Log In'
		end
end