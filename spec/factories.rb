FactoryBot.define do 

	factory :goal do
		name { "Applications" }
		target { 7 }
	end

	factory :task do 
		name { "Application" }
		description { "This is a description" }
		status { :incomplete }
		association :goal
	end
end