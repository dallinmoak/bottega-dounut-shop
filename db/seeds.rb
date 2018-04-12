
10.times do |donut|
  Donut.create!(title: "Donut #{donut}", description: "My great donut description", price: 0.75 + donut )
end

puts "10 donuts created"

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

