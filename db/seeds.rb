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

Exercise.create(name: "Front Squats", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=m4ytaCJZpl0")
Exercise.create(name: "Push Ups", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=_l3ySVKYVJ8")
Exercise.create(name: "Sit Ups", olympic_weightlifting: false, description: "", video_link: "https://www.youtube.com/watch?v=_HDZODOx7Zw")
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



Workout.create(name: "TABATA",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 0, default_rounds: 0 )

Workout.create(name: "EMOM",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "METCON",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "Olympic Weightlifting",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "Warm Up",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "Murph",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "Karen",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "Chipper",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )

Workout.create(name: "WOD",  default_duration_work: 20, default_duration_rest: 10, default_duration_total: 300, default_reps: 12, default_rounds: 5 )
