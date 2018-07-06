# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Organization.destroy_all
Event.destroy_all
Role.destroy_all

u = User.new({:first_name => "Matthew", :last_name => "Hummer", :luser => false, :email => "matt@example.com", :password => "password"})
u.save

o = Organization.new({:name => "Basic Organization", :description=>"This is a really cool organization for all of those people who are interesting in being a part of an organization. We don't offer much bayond that..."})
o.save

e = Event.new({:organizer_id => u.id, :organization_id => o.id, :name => "Charity Event", :description => "We decided to host a charity event. We're looking for volunteers.", :event_date => (Date.today)})
e.save

r1 = Role.new({:title => "Cat Wrangler", :description => "We'll need someone who is good at catching all of the cats that we will have at the event and prevent them from escaping.", :volunteer_id => u.id, :event_id => e.id, :organization_id => o.id, :start_time => (Time.now + 5.hours), :end_time => (Time.now + 8.hours)})
r1.save

r2 = Role.new({:title => "Cat Enthusiast", :event_id => e.id, :organization_id => o.id, :start_time => (Time.now + 4.hours), :end_time => (Time.now + 6.hours)})
r2.save

r3 = Role.new({:title => "Enforcer", :volunteer_id => u.id, :event_id => e.id, :organization_id => o.id, :start_time => (Time.now + 4.hours), :end_time => (Time.now + 6.hours)})
r3.save
