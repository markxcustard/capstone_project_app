# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Mark Custard", email: "mark@email.com", password: "password")
User.create(name: "Cole Challand", email: "cole@email.com", password: "password")
User.create(name: "Tito Rodriguez", email: "tito@email.com", password: "password")
User.create(name: "Dan Mann", email: "dan@email.com", password: "password")
User.create(name: "Chris Van Der Putt", email: "chris@email.com", password: "password")

Exercise.create(name: "Front Squats", olympic_weightlifting: false, description: "By pulling the body forward and increasing knee flexion as a lifter descends into asquat, front squats place more emphasis on the quads rather than the glutes. They also challenge the lower back to remain upright and prevent the torso from falling forward.", video_link: "https://www.youtube.com/watch?v=m4ytaCJZpl0")
Exercise.create(name: "Push Ups", olympic_weightlifting: false, description: "Push-ups exercise the pectoral muscles, triceps, and anterior deltoids, with ancillary benefits to the rest of the deltoids, serratus anterior, coracobrachialis and the midsection as a whole", video_link: "https://www.youtube.com/watch?v=_l3ySVKYVJ8")
Exercise.create(name: "Sit Ups", olympic_weightlifting: false, description: "Lie on your back with your arms crossed over your chest, keeping your knees slightly bent. Raise your upper body off the floor by flexing your abdominal muscles. Touch your elbows to your thighs and repeat", video_link: "https://www.youtube.com/watch?v=_HDZODOx7Zw")
Exercise.create(name: "Pull Ups", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=aAggnpPyR6E")
Exercise.create(name: "Burpees", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=TU8QYVW0gDU")
Exercise.create(name: "Overhead Squats", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=RD_vUnqwqqI")
Exercise.create(name: "Back Squats", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=ultWZbUMPL8")
Exercise.create(name: "Box Jumps", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=52r_Ul5k03g")
Exercise.create(name: "Wall Balls", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=fpUD0mcFp_0")
Exercise.create(name: "Goblet Squats", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=mF5tnEBrdkc")
Exercise.create(name: "KB Swing", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=mF5tnEBrdkc")
Exercise.create(name: "DB Snatch", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=R0mhHuVrLHA")
Exercise.create(name: "Double Unders", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=-tF3hUsPZAI")
Exercise.create(name: "Farmers Walk", olympic_weightlifting: false, description: "", video_link: "")
Exercise.create(name: "Deadlift", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=op9kVnSso6Q")
Exercise.create(name: "Snatch", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=9xQp2sldyts")
Exercise.create(name: "Row", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=S7HEm-fd534")
Exercise.create(name: "Run", olympic_weightlifting: false, description: "", video_link: "")
Exercise.create(name: "Clean and Jerk", olympic_weightlifting: true, description: "", video_link: "")
Exercise.create(name: "Power Clean", olympic_weightlifting: true, description: "", video_link: "https://www.youtube.com/watch?v=GVt4uQ0sDJE")
Exercise.create(name: "Snatch", olympic_weightlifting: true, description: "", video_link: "https://www.youtube.com/watch?v=9xQp2sldyts")
Exercise.create(name: "Mountain Climbers", olympic_weightlifting: nil, description: "", video_link: "")
Exercise.create(name: "Shoulder Press", olympic_weightlifting: nil, description: "", video_link: "https://www.youtube.com/watch?v=xe19t2_6yis")



Workout.create(name: "TABATA",  duration_workout: 20, duration_rest: 10, duration_total: 300, distance: 100, reps: 0, rounds: 0)

Workout.create(name: "EMOM",  duration_workout: 20, duration_rest: 10, duration_total: 300, distance: 200, reps: 12, rounds: 5)

Workout.create(name: "METCON",  duration_workout: 20, duration_rest: 10, duration_total: 300, distance: 300, reps: 12, rounds: 5)

# Workout.create(name: "Olympic Weightlifting",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 400)

# Workout.create(name: "Warm Up",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 500)

# Workout.create(name: "Murph",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 600)

# Workout.create(name: "Karen",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 700)

# Workout.create(name: "Chipper",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 800)

# Workout.create(name: "WOD",  duration_work: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 500)

ExerciseWorkout.create(exercise_id: 1, workout_id: 2, user_id: 1)
ExerciseWorkout.create(exercise_id: 2, workout_id: 3, user_id: 2)
ExerciseWorkout.create(exercise_id: 3, workout_id: 4, user_id: 2)
ExerciseWorkout.create(exercise_id: 2, workout_id: 3, user_id: 1)