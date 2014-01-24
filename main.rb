require_relative 'config/application'
require_relative 'app/controllers/todo'

def display_all
	tasks = all_tasks
	tasks.each do |task|
		string = task.completeness ? "[x]" : "[ ]"
		string += " #{task.id}: #{task.content} "
		puts string
	end
end  

def display_outstanding
	outstanding_tasks = all_tasks.where(completeness: false)
	outstanding_tasks.each do |task|
		puts " #{task.id}: #{task.content} "
	end
end

if ARGV.any? 

	case ARGV[0]
	when "add" 
	  a =	create_task(ARGV[1..-1].join(' '))
	  puts "added task #{a.content}"
	  display_all
	when "delete"
		d =delete_task(ARGV[1])
		puts "deleted task #{d.content}"
		display_all
	when "complete"
		c = complete(ARGV[1])
		puts "completed task #{c.content}"
		display_all
	when "outstanding"
		display_outstanding

	when "list"
		display_all

	else 
		puts "WHAAAA???"	
	end
end


