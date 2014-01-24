require 'faker'

20.times do 
	Task.create!(completeness: false, content: Faker::Company.bs)
end