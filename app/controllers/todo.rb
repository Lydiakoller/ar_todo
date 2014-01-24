

def create_task(task)
	Task.create(completeness: false, content: task)
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

