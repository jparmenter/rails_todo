namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_todos
  end
end

def make_todos
  30.times do |n|
    title = "list #{n+1}"
    TodoList.create(title: title)
  end
end
