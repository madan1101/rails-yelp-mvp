# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Cochon',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01 10 01 10 01',
    category:     'French'

  },
  {
    name:         'Max',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '02 20 02 20 02',
    category:     'Belgian'

  },
  {
    name:         'Babylon',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '03 30 03 30 03',
    category:     'Chinese'

  },
  {
    name:         'Chutney',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '04 40 04 40 04',
    category:     'Japanese'

  },
  {
    name:         'Sebastien',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '05 50 05 50 05',
    category:     'French'

  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
