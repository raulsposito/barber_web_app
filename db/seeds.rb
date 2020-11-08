# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Seed1', email: 'seed1@gmail.com', phone: '099123456', password: '123')

Barber.create(name: 'Agustin', image_url: 'https://cdn4.iconfinder.com/data/icons/jobs-and-occupations-2/64/Barber-job-avatar-profession-occupation-hairdresser-salon-stylist-haircut-512.png', email: 'elagusel1@gmail.com')
Barber.create(name: 'Leonardo', image_url: 'https://cdn3.iconfinder.com/data/icons/avarta/512/barber-hairdresser-user-avatar-man-512.png', email: 'leobarber123@gmail.com')
