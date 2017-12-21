require "unirest"
require "pp"

puts "Welcome to the CrossFit app!! Select an option"
puts "[1] Show All Exercises: "
puts "[2] Show All Workouts: "
puts "[3] Show One Exercise: "
puts "[4] Show One Workout: "
puts "[5] Generate Random Workout: "
puts "[7]...................."
puts "[8]...................."
puts "[9]...................."
puts "[10]...................."
puts "[11]...................."
input_option = gets.chomp
if input_option == "1"
  response = Unirest.get("http://localhost:3000/v1/exercises")
  exercises = response.body
  pp exercises
  
end