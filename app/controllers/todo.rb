def get_user(username)
	User.where(username: username)
end

def display_lists_for_user(user)
	user.lists.each_with_index do |value, index|
		puts "#{index + 1}: #{value.name}"
	end
end

def display_list_tasks(user, listname)
	user.lists.find_by(name: listname).tasks.each do |task|
		string = task.completeness ? "[x]" : "[ ]"
		string += " #{task.id}: #{task.content} "
		puts string
	end
end

def create_list(user, name)
	user.lists << List.create(name: name)
end

def delete_list(user, name)
	user.lists.find_by(name: name).destroy
end

def create_task(list, task)
	list << Task.create(completeness: false, content: task)
end

# create_task(ARGV[0])

def delete_task(id)
  Task.find(id).destroy
end

def all_tasks
  Task.all
end

def complete(id)
  finished_task = Task.find(id)
  finished_task.update(completeness: true)
  finished_task
end

# display_lists_for_user(User.find(4))