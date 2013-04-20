# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :first_name => "Jorge", :last_name => "Chao", :type => "Promoter", :email => "jorge@chao.com"
location1 = Location.create! :name => "Siberia"
event1 = Event.create! :title => "The Ghostwood", :location => location1