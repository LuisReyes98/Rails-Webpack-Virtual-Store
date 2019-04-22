# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([{name: 'Camisa' ,group: 'Vestuario', category: 'Ropa', stock: 23, cost: 20390 }])

User.create([{email: 'admin@email.com' , password: 'admin123', username: 'admin' , access_level: 10 }])