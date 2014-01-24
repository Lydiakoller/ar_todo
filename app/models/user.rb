require_relative 'shared_list'

class User < ActiveRecord::Base
	validates :username, :uniqueness => true
	has_many :shared_lists
	has_many :lists, through: :shared_lists
end