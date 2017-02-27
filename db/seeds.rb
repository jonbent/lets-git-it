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

challenges = [{
	title: "TCP Challenge",
	week: 4,
	day: "Monday",
	cohort: "Squirrels",
	releases: 3
	},
	{
	title: "HTTP Scavenger Hunt",
	week: 4,
	day: "Monday",
	cohort: "Squirrels",
	releases: 0
	},
	{
	title: "Cheering Mascot",
	week: 4,
	day: "Monday",
	cohort: "Squirrels",
	releases: 3
	},
	{title: "Anonymous Blog", week: 4, day: "Monday",cohort: "Squirrels", releases: 5}
]




u = User.create(username: "Bill",phase: 2, cohort: "Otters",total_points: 1)
s = Scoreboard.create(user: u,day_points: 10, day: "Friday")
challenges.each do |params|
	Challenge.create(params)
end

Note.create(title: "WhatEver",body: "Screw you all", note_type: "b", scoreboard: s)


