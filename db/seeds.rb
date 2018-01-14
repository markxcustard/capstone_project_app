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

Exercise.create(name: "Front Squats", olympic_weightlifting: false, description: "By pulling the body forward and increasing knee flexion as a lifter descends into asquat, front squats place more emphasis on the quads rather than the glutes. They also challenge the lower back to remain upright and prevent the torso from falling forward.", video_link: "https://www.youtube.com/embed/m4ytaCJZpl0")
Exercise.create(name: "Push Ups", olympic_weightlifting: false, description: "Push-ups exercise the pectoral muscles, triceps, and anterior deltoids, with ancillary benefits to the rest of the deltoids, serratus anterior, coracobrachialis and the midsection as a whole", video_link: "https://www.youtube.com/embed/_l3ySVKYVJ8")
Exercise.create(name: "Sit Ups", olympic_weightlifting: false, description: "Lie on your back with your arms crossed over your chest, keeping your knees slightly bent. Raise your upper body off the floor by flexing your abdominal muscles. Touch your elbows to your thighs and repeat", video_link: "https://www.youtube.com/embed/_HDZODOx7Zw")
Exercise.create(name: "Pull Ups", olympic_weightlifting: false, description: "Pull Up is a well known compound exercise for training back. It mostly targets Latissimus Dorsi (Lats) but some other back muscles and biceps are also training. Since it only needs fixed bar (or pull up bar), you may perform that exercise at home or outdoor. Pull-ups also work the brachialis and brachioradialis in the arms. These muscles are located near the elbow, and help move the forearm. The biceps brachii, or simply biceps, cross the elbow and shoulder joints and work to flex the elbow joint during the exercise.", video_link: "https://www.youtube.com/embed/aAggnpPyR6E")
Exercise.create(name: "Burpees", olympic_weightlifting: false, description: "Burpees combine a squat, push-up and vertical jump into a sequence of moves performed in quick succession. With your feet together, squat down and put your hands on the ground just in front of your feet. Keep your feet together and jump them back so you land in a push-up. Bend your arms and do a single push-up. Jump your feet back in and under your body and then leap up and into the air. Land on slightly-bent legs and repeat.", video_link: "https://www.youtube.com/embed/TU8QYVW0gDU")
Exercise.create(name: "Overhead Squats", olympic_weightlifting: false, description: "Overhead squats are arguably the most technically demanding movement in weight training, along with the Olympic lift variations. They have tremendous positive effects on mobility, squat depth, back strength, and stability, especially where it translates to other lifts.", video_link: "https://www.youtube.com/embed/RD_vUnqwqqI")
Exercise.create(name: "Back Squats", olympic_weightlifting: false, description: "The back squat is the most basic strength exercise in weightlifting, and one of the most commonly used exercises other than the competition lifts. Execution. Place the barbell behind your neck—retract your shoulder blades tightly and rest the bar in the meat of your upper traps.", video_link: "https://www.youtube.com/embed/ultWZbUMPL8")
Exercise.create(name: "Box Jumps", olympic_weightlifting: false, description: "Stand in an athletic position, with your feet shoulder-width apart, at a comfortable distance from the box. When you're ready to jump, drop quickly into a quarter squat, then extend your hips, swing your arms, and push your feet through the floor to propel yourself onto the box.", video_link: "https://www.youtube.com/embed/52r_Ul5k03g")
Exercise.create(name: "Wall Balls", olympic_weightlifting: false, description: "The Wallball Shot, invented by the CrossFit crew, is a compound exercise which combines a front squat with a medicine ball and a push press-like throwing of the ball to a target located some distance above the exerciser. They add an element of accuracy into the exercise.", video_link: "https://www.youtube.com/embed/fpUD0mcFp_0")
Exercise.create(name: "Goblet Squats", olympic_weightlifting: false, description: "Stand holding a light kettlebell by the horns close to your chest. This will be your starting position. Squat down between your legs until your hamstrings are on your calves.", video_link: "https://www.youtube.com/embed/mF5tnEBrdkc")
Exercise.create(name: "KB Swing", olympic_weightlifting: false, description: "The kettlebell swing works the muscles in the hips, glutes, hamstrings, lats, abs, shoulders, pecs and grip. It's a simple and fast way to incorporate a very athletic movement into a routine safely while burning a ton of calories. Kettlebell swings work everything from your core, to your shoulders, your quads, your hamstrings, your glutes", video_link: "https://www.youtube.com/embed/mF5tnEBrdkc")
Exercise.create(name: "DB Snatch", olympic_weightlifting: false, description: "The single-arm dumbbell snatch increases power and strength throughout the body with an emphasis on the shoulders and back. This exercise also improves coordination, core strength, and serves as a stepping stone to the clean and jerk snatch.", video_link: "https://www.youtube.com/embed/R0mhHuVrLHA")
Exercise.create(name: "Double Unders", olympic_weightlifting: false, description: "A double under is a popular exercise done on a jump rope in which the rope makes two passes per jump instead of just one. It is significantly more effective than a single rope pass in that it allows for higher work capacity. ", video_link: "https://www.youtube.com/embed/-tF3hUsPZAI")
Exercise.create(name: "Farmers Walk", olympic_weightlifting: false, description: "A heavy farmer's walk will quickly fry your back, shoulders, and grip while making your lungs feel like you've guzzled a gallon of napalm. The farmer's walk is the simplest exercise you can do. Just pick up some heavy weights, walk as far as you can and repeat.", video_link: "")
Exercise.create(name: "Deadlift", olympic_weightlifting: false, description: "The deadlift is a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, then lowered to the ground. It is one of the three powerlifting exercises, along with the squat and bench press.", video_link: "https://www.youtube.com/embed/op9kVnSso6Q")
Exercise.create(name: "Snatch", olympic_weightlifting: false, description: "The Snatch is the world's fastest lift. In addition to moving the weight quickly, the snatch also moves the weight a long distance - from the ground all the way overhead. The snatch not only trains power, but is an excellent developer of balance, flexibility, coordination, speed and strength.", video_link: "https://www.youtube.com/embed/9xQp2sldyts")
Exercise.create(name: "Row", olympic_weightlifting: false, description: "Rowing is a very natural motion and most people pick it up quickly. A row is divided into 4 components, the catch, the drive, the finish and the recovery", video_link: "https://www.youtube.com/embed/S7HEm-fd534")
Exercise.create(name: "Run", olympic_weightlifting: false, description: "Moving at a speed faster than a walk, never having both or all the feet on the ground at the same time.", video_link: "")
Exercise.create(name: "Clean and Jerk", olympic_weightlifting: true, description: "The clean and jerk is a composite of two weightlifting movements, most often performed with a barbell: the clean and the jerk. During the clean, the lifter moves the barbell from the floor to a racked position across the deltoids, without resting fully on the clavicles.", video_link: "https://www.youtube.com/embed/d2E2J4iThZ4")
Exercise.create(name: "Power Clean", olympic_weightlifting: true, description: "The Power Clean engages all the major muscles in the body working together, from the calves all the way up to the traps—in much the same way you need to on the football field. That takes coordination. The Power Clean also strengthens the posterior chain, which includes the back muscles, glutes, hamstrings, and calves.", video_link: "https://www.youtube.com/embed/GVt4uQ0sDJE")
Exercise.create(name: "Mountain Climbers", olympic_weightlifting: false, description: " Mountain Climbers are a killer exercise that get your heart rate up fast while also firing nearly every muscle group in the body—deltoids, biceps, triceps, chest, obliques, abdominals, quads, hamstrings and hip abductors. It's truly a fully body workout!", video_link: "https://www.youtube.com/embed/nmwgirgXLYM")
Exercise.create(name: "Shoulder Press", olympic_weightlifting: false, description: "While holding a dumbbell in each hand, sit on a military press bench or utility bench that has back support. Place the dumbbells upright on top of your thighs. Now raise the dumbbells to shoulder height one at a time using your thighs to help propel them up into position.", video_link: "https://www.youtube.com/embed/xe19t2_6yis")



Workout.create(name: "TABATA", description: "Tabata training is one of the most popular forms of high-intensity interval training (HIIT). It consists of eight rounds of ultra-high-intensity exercises in a specific 20-seconds-on, 10-seconds-off interval. It may only take four minutes to complete a Tabata circuit, but those four minutes may well push your body to its absolute limit.",  duration_workout: 20, duration_rest: 10, duration_total: 300, distance: 100, reps: 0, rounds: 0)

Workout.create(name: "EMOM", description: "EMOM (which stands for every minute on the minute) is a type of interval workout where you perform a specific task at the start of every minute for a set amount of time.",  duration_workout: 60, duration_rest: 0, duration_total: 600, distance: 0, reps: 0, rounds: 5)

Workout.create(name: "METCON", description: "Metcon” is a popular term used to describe a workout involving repeated and/or sustained high-intensity exercises, usually involving weight lifting movements, with short rest periods in order to burn fat or create a “conditioning” effect. Most CrossFit workouts are metcons.",  duration_workout: 20, duration_rest: 10, duration_total: 300, distance: 300, reps: 12, rounds: 5)

Workout.create(name: "Olympic Weightlifting", description: "Olympic weightlifting, is an athletic discipline in the modern Olympic programme in which the athlete attempts a maximum-weight single lift of a barbell loaded with weight plates. The two competition lifts in order are the snatch and the clean and jerk.", duration_workout: 0, duration_rest: 0, duration_total: 0, reps: 4, rounds: 5, distance: 0)

Workout.create(name: "Warm Up", description: "A warm up generally consists of a gradual increase in intensity in physical activity (a pulse raiser), joint mobility exercise, and stretching, followed by the activity. Warming up brings the body to a condition at which it safely responds to nerve signals for quick and efficient action.",  duration_workout: 20, duration_rest: 10, duration_total: 180, reps: 12, rounds: 5, distance: 0)

Workout.create(name: "Murph", description: "Murph For time: 1 mile Run 100 Pull-ups 200 Push-ups 300 Squats 1 mile Run. In memory of Navy Lieutenant Michael Murphy, 29, of Patchogue, N.Y., who was killed in Afghanistan June 28th, 2005.",  duration_workout: 20, duration_rest: 10, duration_total: 300, reps: 12, rounds: 5, distance: 600)

Workout.create(name: "Karen", description: "“Karen” is a deceptively simple CrossFit workout. 150 wall balls.",  duration_workout: 0, duration_rest: 0, duration_total: 0, reps: 150, rounds: 1, distance: 0)

Workout.create(name: "Chipper", description: "The name Chipper describes a workout that combines a lot of different movements at high volume. You complete all reps assigned for each exercise before moving on to the next. Unlike the circuits seen in a lot of CrossFit workouts, a Chipper is performed only once.",  duration_workout: 0, duration_rest: 0, duration_total: 0, reps: 50, rounds: 10, distance: 0)

Workout.create(name: "WOD", description: "The WOD is the workout of the day. Each day a new WOD is posted to CrossFit.com, and it's part of a complete program designed to improve strength and conditioning. The CrossFit.com program is characterized by three days of work before one day of rest, though athletes may alter this pattern.",  duration_workout: 2400, duration_rest: 1200, duration_total: 3600, reps: 0, rounds: 0, distance: 0)

ExerciseWorkout.create(exercise_id: 1, workout_id: 2, user_id: 1)
ExerciseWorkout.create(exercise_id: 2, workout_id: 3, user_id: 2)


ExerciseWorkout.create(exercise_id: 9, workout_id: 7, user_id: 1)

ExerciseWorkout.create(exercise_id: 18, workout_id: 6, user_id: 1)
ExerciseWorkout.create(exercise_id: 4, workout_id: 6, user_id: 1)
ExerciseWorkout.create(exercise_id: 2, workout_id: 6, user_id: 1)
ExerciseWorkout.create(exercise_id: 10, workout_id: 6, user_id: 1)
ExerciseWorkout.create(exercise_id: 18, workout_id: 6, user_id: 1)


ExerciseWorkout.create(exercise_id: 19, workout_id: 4, user_id: 2)
ExerciseWorkout.create(exercise_id: 20, workout_id: 4, user_id: 2)

ExerciseWorkout.create(exercise_id: 8, workout_id: 8, user_id: 2)
ExerciseWorkout.create(exercise_id: 9, workout_id: 8, user_id: 2)
ExerciseWorkout.create(exercise_id: 10, workout_id: 8, user_id: 2)
ExerciseWorkout.create(exercise_id: 11, workout_id: 8, user_id: 2)


ExerciseWorkout.create(exercise_id: 5, workout_id: 1, user_id: 6)






