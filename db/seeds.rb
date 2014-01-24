require 'faker'

# 20.times do 
# 	Task.create!(completeness: false, content: Faker::Company.bs)
# end

10.times do
	u = User.create!(username: Faker::Internet.user_name)
	2.times do 
		list = List.create(name: Faker::Lorem.word)
		u.lists << list 
		5.times do
			list.tasks << Task.create(completeness: false, content: Faker::Company.bs)
		end
	end
end
