# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teams =
         [{name: "The Untouchaballs", sport: "Basketball", city: "Dallas, TX", practice_location: "Wynn Center", practice_days: "Mondays & Wednesdays"},
         {name: "The Rangers", sport: "Baseball", city: "Dallas, TX", practice_location: "Jones Stadium", practice_days: "Tuesdays & Thursdays"},
         {name: "Goal Diggers", sport: "Soccer", city: "Dallas, TX", practice_location: "Leffer Field", practice_days: "Mondays & Wednesdays"},
         {name: "The Flaming Flamingos", sport: "Soccer", city: "Dallas, TX", practice_location: "Greenhill Field", practice_days: "Tuesdays & Thursdays"},
         {name: "Hoops I Did It Again", sport: "Basketball", city: "Austin, TX", practice_location: "Austin Courts", practice_days: "Mondays & Fridays"},
         {name: "Green Sox", sport: "Baseball", city: "Austin, TX", practice_location: "Bush Stadium", practice_days: "Tuesdays & Fridays"},
         {name: "Taco Lovers", sport: "Soccer", city: "Austin, TX", practice_location: "Jameson Fields", practice_days: "Mondays & Wednesdays"},
         {name: "The Lions", sport: "Basketball", city: "Houston, TX", practice_location: "Kinkaid Court", practice_days: "Mondays & Wednesdays"},
         {name: "The Astros", sport: "Baseball", city: "Houston, TX", practice_location: "Astro Stadium", practice_days: "Tuesdays & Fridays"},
         {name: "The Texans", sport: "Soccer", city: "Houston, TX", practice_location: "Houston Field", practice_days: "Mondays & Wednesdays"},]

teams.each do |team|
  Team.create(team)
end
