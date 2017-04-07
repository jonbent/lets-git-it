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

challenges = [
  {
    title: 'Cheering Mascot',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Roman Numerals',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Debugging Drill: Use A REPL',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Debugging Drill: Read the Error',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Design Drill: Code Style',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Design Drill: Method Chaining',
    week: 1,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Pig Latin',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Ruby Drill: Regular Expressions',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Design Drill: Translate to Pseudocode',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Benchmarking with Blocks',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Ruby Drill: Enumerable Methods',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Implementing Enumerable Methods',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Ruby Drill: Destructive Methods',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Algorithm Drill: Shuffle',
    week: 1,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Ruby Meets Samuel Beckett',
    week: 1,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Linear vs. Binary Search',
    week: 1,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Prime Factors: Sieve of Eratosthenes',
    week: 1,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Ruby Drill: Control Flow in Loops',
    week: 1,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Calculating Subsets With Recursion',
    week: 1,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Data Drill: Nested Arrays',
    week: 1,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Data Drill: Nested Arrays 2',
    week: 1,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Ruby Racer',
    week: 1,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Word Search',
    week: 1,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Sodoku',
    week: 1,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Ruby Drill: Accessor Methods',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Design Drill: Public vs. Private Interfaces',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Ruby Drill: The self Keyword',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Ruby Drill: Exploring Scope',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Orange Tree 1: Just Oranges',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Orange Tree 2: Groves',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Design Drill: Argument-Order Dependency',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Ruby Drill: ARGV Basics',
    week: 2,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Parsing Data 1',
    week: 2,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Design Drill: Classical Inheritance',
    week: 2,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Cookies and Ovens',
    week: 2,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'For First Time Students / Bernies Bistro',
    week: 2,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: "For Students Repeating Phase 1 / Deano's Dealership",
    week: 2,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Web Scraping Challenge',
    week: 2,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Ruby Flashcards 1 Single Deck',
    week: 2,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Database Drill: SQL Tutor',
    week: 2,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'Database Drill: Intro to SQLite',
    week: 2,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 7
  },
  {
    title: 'Poll Database Design',
    week: 2,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'University DB Schema',
    week: 2,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Voting Results: Queries',
    week: 3,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Voting Results: Modifying Data',
    week: 3,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: "World's Simplest Browser",
    week: 3,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Student Roster DB from Schema',
    week: 3,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 8
  },
  {
    title: 'Address Book DB from Schema',
    week: 3,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Active Record Jr. Part 1',
    week: 3,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Active Record Intro: Code Base',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 12
  },
  {
    title: 'Active Record Intro: Creating Tables',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Active Record Intro: Editing Tables',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Active Record Intro: Retrieving Records',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 11
  },
  {
    title: 'Active Record Intro: Inserting Records',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Active Record Intro: Objects',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Active Record Intro: belongs_to Association',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Active Record Intro: has_many Association',
    week: 3,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 7
  },
  {
    title: 'Active Record Intro: Validations',
    week: 3,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'ActiveRecord Student Schema',
    week: 3,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'At The Races',
    week: 3,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Advanced Active Record',
    week: 3,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: "Active Record Todo's 1",
    week: 3,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 8
  },
  {
    title: 'TCP Challenge',
    week: 4,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'HTTP Scavenger Hunt',
    week: 4,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 0
  },
  {
    title: 'Cheering Mascot',
    week: 4,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Anonymous Blog',
    week: 4,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: 'AR Associations Hotels Drill',
    week: 4,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'AR Assocations At the Races',
    week: 4,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'More Advanced Hard Active Record',
    week: 4,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Anagrams 1',
    week: 4,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'URL Shortener',
    week: 4,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Rest Controller',
    week: 4,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Datetime Challenge',
    week: 4,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 5
  },
  {
    title: "Craig's List Jr.",
    week: 4,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'User Registration and Authentication',
    week: 4,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Multi-author Blog',
    week: 4,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Flashcards Group Project',
    week: 4,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'JavaScript Roman Numerals',
    week: 5,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'JavaScript Todos',
    week: 5,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Orange Trees',
    week: 5,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'OOJS Bikes & Stations',
    week: 5,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Style Editor',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Tabbed Interface',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Adding Comments',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Cheering Mascot Round Two',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 8
  },
  {
    title: 'Layout Drill: Basic Form Styling',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Learn CSS Layout',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Layout Drill: Left-hand Navigation',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Layout Drill: Right-hand Navigation',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Layout Drill: Proper Typesetting',
    week: 5,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Lucky AJAX',
    week: 5,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'AJAXifying Hacker News',
    week: 5,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Simon Says',
    week: 5,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'DBC Overflow',
    week: 5,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'DBC Overflow',
    week: 5,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'JS Racer 1',
    week: 6,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'JS Racer 2',
    week: 6,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'JS Racer 3',
    week: 6,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Refactor HR App',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Hacker News Clone Part One',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Hacker News Clone Part Two',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Intro to AR Validations',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Event App Validations',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Teams & Leagues',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Shirts!',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'At the Races',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'AJAXifying Hacker News',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'AJAX your CRUD apps',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Tic-Tac-Toe',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'OOJS with Gardens',
    week: 6,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'ASSESSMENT!!',
    week: 6,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Environment Variables Challenge',
    week: 6,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'Build Something Beautiful & Meaningful',
    week: 6,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Build Something Beautiful & Meaningful',
    week: 6,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Sinatra to Rails',
    week: 7,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Rocket, Paper-plane, Scissors',
    week: 7,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 6
  },
  {
    title: 'TDD Favorite Songs Application',
    week: 7,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Client Project',
    week: 7,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Client Project',
    week: 7,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Client Project',
    week: 7,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: '256 (a 2048 clone)',
    week: 8,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 4
  },
  {
    title: 'Markdown Widget Challenge',
    week: 8,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Jasmine MVC',
    week: 8,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 2
  },
  {
    title: 'Lil Twitter',
    week: 8,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 3
  },
  {
    title: 'Final Project',
    week: 8,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 8,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 9,
    day: 'Monday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 9,
    day: 'Tuesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 9,
    day: 'Wednesday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 9,
    day: 'Thursday',
    cohort: 'Squirrels',
    releases: 1
  },
  {
    title: 'Final Project',
    week: 9,
    day: 'Friday',
    cohort: 'Squirrels',
    releases: 1
  }
]

u = User.create(username: 'Bill', phase: 2, cohort: 'Otters', total_points: 1)
s = Scoreboard.create(user: u, day_points: 10, day: 'Friday')
challenges.each do |params|
  Challenge.create(params)
end

Note.create(title: 'WhatEver', body: 'Screw you all', note_type: 'b', scoreboard: s)
