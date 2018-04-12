10.times do |donut|
  Donut.create!(title: "Donut #{donut}", description: "My great donut description", price: 1.00 + 0.75)
end

puts "10 donuts created"