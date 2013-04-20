# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :first_name => "Jorge", :last_name => "Chao", :user_type => "Promoter", :email => "jchao@cs.uno.edu"
location1 = Location.create! :name => "Siberia"
event1 = Event.create! :title => "The Ghostwood", :location => location1
Task.create :event_id => event1, :completed => false, :task_type => "Flyering"
activity1 = Activity.create! :user_id => user1.id, :latitude => 30.0, :longitude => -90.0
activity2 = Activity.create! :user_id => user1.id, :latitude => 30.0, :longitude => -90.0
activity3 = Activity.create! :user_id => user1.id, :latitude => 30.0, :longitude => -90.0
activity4 = Activity.create! :user_id => user1.id, :latitude => 30.0, :longitude => -90.0
activity5 = Activity.create! :user_id => user1.id, :latitude => 30.0, :longitude => -90.0

#  id         :integer          not null, primary key
#  user_id    :integer
#  latitude   :float
#  longitude  :float
#  time       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
