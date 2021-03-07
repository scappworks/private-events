# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

events = Event.create([{ :event_name => "Event seventeen", :event_date => "2023-01-01", :user_id => 2, :event_description => "This is event number seventeen!" },
    { :event_name => "Event eighteen", :event_date => "2023-01-01", :user_id => 3, :event_description => "This is event number eighteen!" },
    { :event_name => "Event nineteen", :event_date => "2023-01-01", :user_id => 4, :event_description => "This is event number nineteen!" },
    { :event_name => "Event twenty", :event_date => "2023-01-01", :user_id => 5, :event_description => "This is event number twenty!" },
    { :event_name => "Event twentyone", :event_date => "2021-01-01", :user_id => 6, :event_description => "This is event number twentyone!" },
    { :event_name => "Event twentytwo", :event_date => "2021-01-01", :user_id => 7, :event_description => "This is event number twentytwo!" },
    { :event_name => "Event twentythree", :event_date => "2021-01-01", :user_id => 1, :event_description => "This is event number twentythree!" },
    { :event_name => "Event twentyfour", :event_date => "2021-01-01", :user_id => 2, :event_description => "This is event number twentyfour!" }])

enrollments = Enrollment.create([{ :user_id => 2, :event_id => 17 },
    { :user_id => 3, :event_id => 18 },
    { :user_id => 4, :event_id => 19 },
    { :user_id => 5, :event_id => 20 },
    { :user_id => 6, :event_id => 21 },
    { :user_id => 7, :event_id => 22 },
    { :user_id => 1, :event_id => 23 },
    { :user_id => 2, :event_id => 24}])