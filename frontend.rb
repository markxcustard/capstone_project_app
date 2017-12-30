require "unirest"
require "pp"


puts "Welcome to the Exercise App!! Select an option: "
puts "[1] Show All Exercises: "
puts "[2] Show All Workouts: "
puts "[3] Show One Exercise: "
puts "[4] Show One Workout: "
puts "[5] Create a workout: "
puts "[7]...................."
puts "[8]...................."
puts "[9]...................."
puts "[10]...................."
puts "[11]...................."
puts "[Signup] "
puts "[Login] "
puts "[Logout] "
puts "[q]"


input_option = gets.chomp
if input_option == "1"
  response = Unirest.get("http://localhost:3000/v1/exercises")
  exercises = response.body
  pp exercises
elsif input_option == "2"
  response = Unirest.get("http://localhost:3000/v1/workouts")
  workouts = response.body
  pp workouts
elsif input_option == "3"
  print "Enter an exercise id: "
  exercise_id = gets.chomp.to_i
  response = Unirest.get("http://localhost:3000/v1/exercises/#{exercise_id}")
  exercise = response.body
  pp exercise
elsif input_option == "4"
  print "Enter a workout id: "
  workout_id = gets.chomp
  response = Unirest.get("http://localhost:3000/v1/workouts/#{workout_id}")
  workout = response.body
  pp workout
  
elsif input_option == "5"
  print "Create a workout: "
  params = {}
  print "Workout name: "
  params[:name] = gets.chomp
  print "Default Duration Work: "
  params[:default_duration_work] = gets.chomp.to_i
  print "Default Duration Rest: "
  params[:default_duration_rest] = gets.chomp.to_i
  print "Default Duration Total: "
  params[:default_duration_total] = gets.chomp.to_i
  print "Default Reps: "
  params[:default_reps] = gets.chomp.to_i
  print "Default Rounds: "
  params[:default_rounds] = gets.chomp.to_i
  # params.delete_if { |_key, value| value.empty? }
  response = Unirest.post("http://localhost:3000/v1/workouts", parameters: params)
  workout = response.body
  pp workout

  elsif input_option == "Signup"
    params = {}
    print "Name: "
    params[:name] = gets.chomp
    print "Email: "
    params[:email] = gets.chomp
    print "Password: "
    params[:password] = gets.chomp
    print "Password confirmation: "
    params[:password_confirmation] = gets.chomp
    response = Unirest.post("http://localhost:3000/v1/users", parameters: params)
    pp response.body
  elsif input_option == "Login"
    puts "Login to the app"
    params = {}
    print "Email: "
    params[:email] = gets.chomp
    print "Password: "
    params[:password] = gets.chomp
    response = Unirest.post(
      "http://localhost:3000/v1/user_token",
      parameters: {auth: {email: params[:email], password: params[:password]}}
    )
    pp response.body
    # Save the JSON web token from the response
    jwt = response.body["jwt"]
    # Include the jwt in the headers of any future web requests
    Unirest.default_header("Authorization", "Bearer #{jwt}")
  elsif input_option == "Logout"
    jwt = ""
    Unirest.clear_default_headers()
  elsif input_option == "q"
    puts "Goodbye!"
  
end
puts 
puts "Press enter to continue"
gets.chomp