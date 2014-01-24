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

def welcome(user)
<<-AAA
Welcome #{u.username}
What would you like to do? (Enter number)
1. Display lists
2. Choose list
3. Create list
4. Delete list
AAA
end


# def run(user)
# 	welcome(user)
# 	input = gets.chomp
# 	case input
# 	when "display lists"








# 	when "add" 
# 	  a =	create_task(ARGV[1..-1].join(' '))
# 	  puts "added task #{a.content}"
# 	  display_all
# 	when "delete"
# 		d =delete_task(ARGV[1])
# 		puts "deleted task #{d.content}"
# 		display_all
# 	when "complete"
# 		c = complete(ARGV[1])
# 		puts "completed task #{c.content}"
# 		display_all
# 	when "outstanding"
# 		display_outstanding

# 	when "list"
# 		display_all

# 	else 
# 		puts "WHAAAA???"	
# 	end
# end



# if ARGV.any?
# 	u = get_user(ARGV[0])
# 	if u.empty? 
# 		puts "No user: #{u}"
# 	else
# 		run(u)
# 	end
# end





# if ARGV.any? 

# 	case ARGV[0]
# 	when ""
# 	when "add" 
# 	  a =	create_task(ARGV[1..-1].join(' '))
# 	  puts "added task #{a.content}"
# 	  display_all
# 	when "delete"
# 		d =delete_task(ARGV[1])
# 		puts "deleted task #{d.content}"
# 		display_all
# 	when "complete"
# 		c = complete(ARGV[1])
# 		puts "completed task #{c.content}"
# 		display_all
# 	when "outstanding"
# 		display_outstanding

# 	when "list"
# 		display_all

# 	else 
# 		puts "WHAAAA???"	
# 	end
# end


