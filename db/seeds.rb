# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all
Challenge.destroy_all
Scoreboard.destroy_all

User.destroy_all


u = User.create(username: "Bill",phase: 2, cohort: "Otters",total_points: 1)
s = Scoreboard.create(user: u,day_points: 10, day: "Friday")
Challenge.create(title: "Ruby Racer",releases: 2, completed: 0, scoreboard: s)

Note.create(title: "WhatEver",body: "Screw you all", note_type: "b", scoreboard: s)


