class List < ActiveRecord::Base
	has_many :tasks
	has_many :shared_lists
	has_many :users, through: :shared_lists
end