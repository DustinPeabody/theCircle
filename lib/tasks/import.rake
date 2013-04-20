task :import => :environment do
  puts "Beginning import..."
  User.delete_all
  Event.delete_all
  Task.delte_all
  File.open("./telemetry.csv", "r").each_line do |line|
    site = line.split ","
    s = Site.create! :site_name => site[10]
    b = Buoy.create! :site_id => s.id,
      :buoy_id => site[0],
      :latitude => site[1],
      :longitude => site[2],
      :attachment => site[3],
      :bottom_type => site[5],
      :depth => site[6],
      :notes => site[7],
      :downline => site[8],
      :anchorline => site[9]

    r = Receiver.create! :receiver_no => site[11], :buoy_id => b.id
    puts "Created Buoy number #{site[0]}"
  end
  puts "Import compleeat!"
end