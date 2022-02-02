require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee 
  belongs_to :store
end

#creating employees
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Celia", last_name: "Mae", hourly_rate: 80)
@store2.employees.create(first_name: "Mike", last_name: "Wazowski", hourly_rate: 65)
@store2.employees.create(first_name: "James", last_name: "Sullivan", hourly_rate: 70)
@store2.employees.create(first_name: "Randall", last_name: "Boggs", hourly_rate: 55)

