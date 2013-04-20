# EMAIL,USER NAME,USER TYPE ,USER ACTION,EVENT,LOCATION ,TIME
task :import => :environment do
  puts "Beginning import..."
  Event.delete_all
  Task.delete_all
  ActivitiesTask.delete_all
  File.open("./db/the_circle.csv", "r").each_line do |line|
    line = line.split ","
    u = User.find_or_create_by_email line[0]
    u.first_name = line[1].split.first
    u.last_name = line[1].split.last
    u.user_type = line[2]
    u.save
    
    e = Event.find_or_create_by_title line[4] if line[4]
    t = Task.find_or_create_by_name :name => line[3] if e
    t.event_id = e.id if e
    t.task_type = t.name if e
    t.save if t
    puts "Created User number #{line[0]}"
  end
  puts "Import compleeat!"
end