puts "destroying everything..."

User.destroy_all
Service.destroy_all
Subscription.destroy_all


10.times do 
    Service.create(name: Faker::Name.first_name, price: rand(5.99..99.99))
end

10.times do
    User.create(username: Faker::Name.name, email: Faker::Name.last_name, age: rand(18..99)))
end