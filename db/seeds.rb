# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Group.create([
  {
    name: "Ropa"
  },
  {
    name: "Electronicos"
  },
])

Category.create([
  {
    name: "Camisas",
    group_id: 1
  },
  {
    name: "Gorras",
    group_id: 1

  },
  {
    name: "Computadoras",
    group_id: 2

  },
  {
    name: "Telefonos",
    group_id: 2

  }
])

my_products = Product.create([
  {name: 'Camisa' ,group_id: 1, category_id: 1, stock: 3, cost: 200 },
  {name: 'Gorra' ,group_id: 1, category_id: 2, stock: 6, cost: 300},
  {name: 'Laptop' ,group_id: 2, category_id: 3, stock: 2, cost: 105000 },
  {name: 'Iphone' ,group_id: 2, category_id: 4, stock: 5, cost: 505000 },
])
for pro in my_products do
  
  pro.image.attach(io: File.open('./app/frontend/assets/images/shirt.jpg'), filename: 'shirt.jpg')

end


User.create([
  {email: 'admin@email.com' , password: 'admin123', username: 'My Admin' , access_level: 10 },
  {email: 'email@email.com' , password: 'admin123', username: 'Alguien' , access_level: 1 }
])


UsersCartsConector.create([
  {
    user_id: 1,
    product_id:1,
    amount: 1,
    in_order: false,
  },
  {
    user_id: 1,
    product_id:2,
    amount: 2,

  },
  {
    user_id: 1,
    product_id:3,
    amount: 1,

  },
  {
    user_id: 2,
    product_id:4,
    amount: 2,
  },
])
