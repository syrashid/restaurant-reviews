puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

50.times do
  attributes = {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    stars: rand(1..5) }
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished! Created #{Restaurant.count} restaurants"
