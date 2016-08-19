FactoryGirl.define do

	factory :project do

		trait :valid do
			title { Faker::Lorem.word }
			description { Faker::Lorem.sentence }
			body { Faker::Lorem.paragraph }
			image { Faker::Internet.url }
			project_location { Faker::Internet.url }
			source_location { Faker::Internet.url }
		end

		trait :no_title do
			title ''
			description { Faker::Lorem.sentence }
			body { Faker::Lorem.paragraph }
			image { Faker::Internet.url }
			project_location { Faker::Internet.url }
			source_location { Faker::Internet.url }
		end

		trait :no_description do
			title { Faker::Lorem.word }
			description ''
			body { Faker::Lorem.paragraph }
			image { Faker::Internet.url }
			project_location { Faker::Internet.url }
			source_location { Faker::Internet.url }
		end
	end
end