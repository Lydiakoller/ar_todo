require_relative '../../config/application.rb'

class CreateSharedLists < ActiveRecord::Migration
	def change
		create_table :shared_lists do |t|
			t.belongs_to :user_id
			t.belongs_to :list_id
			t.timestamps
		end
	end
end