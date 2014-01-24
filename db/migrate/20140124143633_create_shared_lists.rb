require_relative '../../config/application.rb'

class CreateSharedLists < ActiveRecord::Migration
	def change
		create_table :shared_lists do |t|
			t.belongs_to :user
			t.belongs_to :list
			t.timestamps
		end
	end
end