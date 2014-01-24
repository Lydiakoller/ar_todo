require_relative '../../config/application.rb'

class AddListId < ActiveRecord::Migration
	def change
		add_column :tasks, :list_id, :belongs_to
	end
end