# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{ :name => "userone", :username => "userone", :email => "userone@email.com", :password => "password" },
    { :name => "usertwo", :username => "usertwo", :email => "usertwo@email.com", :password => "password" },
    { :name => "userthree", :username => "userthree", :email => "userthree@email.com", :password => "password" },
    { :name => "userfour", :username => "userfour", :email => "userfour@email.com", :password => "password" },
    { :name => "userfive", :username => "userfive", :email => "userfive@email.com", :password => "password" },
    { :name => "usersix", :username => "usersix", :email => "usersix@email.com", :password => "password" },
    { :name => "userseven", :username => "userseven", :email => "userseven@email.com", :password => "password" }])

events = Event.create([{ :event_name => "Event one", :event_date => "2015-01-01", :user_id => 1, :event_description => "This is event number one!" },
    { :event_name => "Event two", :event_date => "2016-01-01", :user_id => 1, :event_description => "This is event number two!" },
    { :event_name => "Event three", :event_date => "2017-01-01", :user_id => 2, :event_description => "This is event number three!" },
    { :event_name => "Event four", :event_date => "2018-01-01", :user_id => 3, :event_description => "This is event number four!" },
    { :event_name => "Event five", :event_date => "2019-01-01", :user_id => 4, :event_description => "This is event number five!" },
    { :event_name => "Event six", :event_date => "2020-01-01", :user_id => 5, :event_description => "This is event number six!" },
    { :event_name => "Event seven", :event_date => "2021-01-01", :user_id => 6, :event_description => "This is event number seven!" },
    { :event_name => "Event eight", :event_date => "2022-01-01", :user_id => 7, :event_description => "This is event number eight!" }])

enrollments = Enrollment.create([{ :user_id => 1, :event_id => 1 },
    { :user_id => 1, :event_id => 2 },
    { :user_id => 2, :event_id => 3 },
    { :user_id => 3, :event_id => 4 },
    { :user_id => 4, :event_id => 5 },
    { :user_id => 5, :event_id => 6 },
    { :user_id => 6, :event_id => 7 },
    { :user_id => 7, :event_id => 8 }])