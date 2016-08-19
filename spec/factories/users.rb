FactoryGirl.define do

	factory :user do

		trait :valid do
			name { Faker::Name.name }
			email { Faker::Internet.email }
			password 'password'
			password_confirmation 'password'
		end

		trait :no_name do
			name ''
			email { Faker::Internet.email }
			password 'password'
			password_confirmation 'password'
		end

		trait :no_email do
			name { Faker::Name.name }
			email ''
			password 'password'
			password_confirmation 'password'
		end

		trait :long_name do
			name 'a' * 64
			email { Faker::Internet.email }
			password 'password'
			password_confirmation 'password'
		end

		trait :long_email do
			name { Faker::Name.name }
			email 'a' * 244 + '@example.com'
			password 'password'
			password_confirmation 'password'
		end

		trait :short_password do
			name { Faker::Name.name }
			email { Faker::Internet.email }
			password 'a' * 5
			password_confirmation 'a' * 5
		end
	end
end