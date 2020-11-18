puts "Cleaning database..."
Chef.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

50.times do
  attributes = {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    stars: rand(1..5) }
  restaurant = Restaurant.create!(attributes)

  chef_attributes = {
    name: Faker::Name.name,
    restaurant: restaurant
  }
  chef = Chef.create!(chef_attributes)

  puts "Created #{restaurant.name} with Chef #{chef.name}"
end

puts "Finished! Created #{Restaurant.count} restaurants"
