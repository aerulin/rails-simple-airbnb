require 'faker'

puts 'Creating 100 fake flats..'
100.times do
  flat = Flat.new(
    name: Faker::Address.community,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    number_of_guests: rand(1..6),
    description: Faker::Lorem.paragraphs,
    price_per_night: rand(50..400),
    image: "https://unsplash.it/400/400?image=#{rand(1000)}"
  )
  flat.save!
end
puts 'Finished!'
