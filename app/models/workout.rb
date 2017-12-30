class Workout < ApplicationRecord
  has_many :exercise_workouts
  has_many :user, through: :exercise_workouts
  has_many :exercise
end
