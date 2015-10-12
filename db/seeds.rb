# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Session.create(name: '3min jog -- nonstop', start_time: DateTime.new(2015,10,13))
Session.create(name: '3.5min jog -- nonstop', start_time: DateTime.new(2015,10,15))
Session.create(name: '3.5min jog -- nonstop', start_time: DateTime.new(2015,10,17))
Session.create(name: '5k!!!', start_time: DateTime.new(2015,11,26))
