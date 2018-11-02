# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Format.create([
  { name: 'hardcover' },
  { name: 'softcover' },
  { name: 'digital' },
])

Author.create([
  { first_name: 'Stephen', last_name: 'King' },
  { first_name: 'William', last_name: 'Shakespeare' },
  { first_name: 'George', last_name: 'Orwell' },
  { first_name: 'Mark', last_name: 'Twain' },
  { first_name: 'Katherine', last_name: 'Applegate' }
])

# Book.create([
#   { title: "It", release_date: '10-08-1984 10:00:00', base_price: 10.50, format: 1 },
  # { title: "Romeo and Juliet", release_date: '02-12-1992 10:00:00', base_price: 2.50, format: 2 },
  # { title: "1984", release_date: '03-08-1988 10:00:00', base_price: 7.25, format: 3 },
  # { title: "Tom Sayer", release_date: '10-31-1990 10:00:00', base_price: 120.00, format: 1 },
  # { title: "Animorphs", release_date: '10-08-2018 10:00:00', base_price: 3.75, format: 2 }
# ])
