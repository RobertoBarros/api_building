10.times do |i|
  u = User.create(email: "teste#{i}@teste.com",
                  name: Faker::Name.name,
                  password: '123123',
                  password_confirmation: '123123')

  5.times do
    Restaurant.create(name: Faker::Company.name,
                      address: Faker::Address.street_address,
                      user: u)
  end
end

200.times do
  user = User.all.sample(1).first
  restaurant = Restaurant.all.sample(1).first
  Review.create(content: Faker::ChuckNorris.fact, user: user, restaurant: restaurant)
end

User.create(email: 'admin@admin.com', password: '123123', password_confirmation: '123123', admin: true)
