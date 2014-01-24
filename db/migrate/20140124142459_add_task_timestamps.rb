require_relative '../../config/application.rb'

class AddTaskTimestamps < ActiveRecord::Migration
	def change
		add_timestamps :lists
	end
end