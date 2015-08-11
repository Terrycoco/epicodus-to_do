require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/to_do')

get('/') do
  erb(:index)
end

get('/to_do') do
  #take in our passed parameter
  task_str = params.fetch('new_task')
  #create a new task object
  task_new = Task.new()
  #add our new task to the array of tasks (if any)
  task_new.add(task_str)
  #return count & tasks in array
  @count = Task.count()
  @tasks = Task.all()
  erb(:to_do)
end
