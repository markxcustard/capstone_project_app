class Exercise < ApplicationRecord
  has_many :exercise_workouts
  has_many :user, through: :exercise_workouts
  has_many :workout, through: :exercise_workouts
end
