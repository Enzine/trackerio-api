# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sports = Sport.create([
  { name: 'Tankotanssi' },
  { name: 'Dancehall' },
  { name: 'Salitreeni' },
  { name: 'Venyttely' },
])

categories = Category.create([
  { name: 'Lihaskunto' },
  { name: 'Venyvyys' },
  { name: 'Hapenottokyky' },
])

CompletedActivity.create(
  time_of_completion: Date.today, 
  place: 'Työpaikan sali', 
  duration_seconds: 0,
  duration_minutes: 0,
  duration_hours: 1,
  description: '', 
  user: 'Sonja',
  sport: sports[2],
  categories: [categories[0], categories[1]]
)

CompletedActivity.create(
  time_of_completion: Date.today, 
  place: 'Tankotanssitreenit Pasilassa', 
  duration_seconds: 0,
  duration_minutes: 15,
  duration_hours: 1,
  description: '', 
  user: 'Kaisu',
  sport: sports[0],
  categories: [categories[0], categories[1]]
)
