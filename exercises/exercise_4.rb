require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@men_stores = Store.where(womens_apparel: false)

p @men_stores

@men_stores.each {|store| puts "Name:#{store.name} \nAnnual revenue: #{store.annual_revenue}"}

@women_stores = Store.where(mens_apparel: false)
@richies = @women_stores.where("annual_revenue > ?", 1000000)

@richies.each {|store| puts "Name:#{store.name} \nAnnual revenue: #{store.annual_revenue}"}
