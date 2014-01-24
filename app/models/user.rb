class User < ActiveRecord::Base
	validates :username, :uniqueness => true
	# has_many :lists, :through => :shared_lists
end