# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all



Car.create!({
  brand: "Porsche",
  model: "911",
  year: 1995,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQga3kWvKvAx2gtOf1h2wAD7Cv06zASVu_1Jg&usqp=CAU",
  price: 60000,
  colour: "Yellow"
})

Car.create!({
  brand: "Honda",
  model: "Accord",
  year: 1990,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuO3bMYN0mVKy7A18FNsTAHUbg5SZzumi1rBvQBR00EeU4YbjYYX3HZf3QFQdOol3mjCI&usqp=CAU",
  price: 5000,
  colour: "Black"
})

Car.create!({
  brand: "Toyota",
  model: "Supra",
  year: 1998,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO-SY65cmdPTG-uXUqusS5OUXPWTDgptSJmA&usqp=CAU",
  price: 10000,
  colour: "White"
})

Car.create!({
  brand: "Mitsubishi",
  model: "Lancer",
  year: 2015,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWM8choURQuWhv04oZXnkjB0DF9QCITj2lOg&usqp=CAU",
  price: 42000,
  colour: "Blue"
})

Car.create!({
  brand: "BMW",
  model: "M4",
  year: 2016,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF3Fka8h4fCttq0YCSoqFzxRE7069fXqFb4ocsPQ56SqyXWVyjgLAETEvbV-J-0r1Csko&usqp=CAUU",
  price: 50000,
  colour: "Orange"
})

Car.create!({
  brand: "Mercedes",
  model: "Benz",
  year: 1965,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb69EkNLwcH_lZdsM4mLnIWBjDFwBUbavrckqVNqjoztWmqUFODxQMK7-zT9O94FUI8mo&usqp=CAU",
  price: 40000,
  colour: "White"
})

Car.create!({
  brand: "BMW",
  model: "M5",
  year: 2016,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF3Fka8h4fCttq0YCSoqFzxRE7069fXqFb4ocsPQ56SqyXWVyjgLAETEvbV-J-0r1Csko&usqp=CAUU",
  price: 50000,
  colour: "Orange"
})

p "Create #{Car.count} cars"