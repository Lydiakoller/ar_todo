require_relative '../../config/application.rb'

class CreateTasks < ActiveRecord::Migration
	def change
		create_table :tasks do |t|
			t.string :content
			t.boolean :completeness
			t.timestamps
		end
	end
end