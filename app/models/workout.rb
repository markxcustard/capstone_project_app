class Workout < ApplicationRecord
  has_many :exercise_workouts
  has_many :users, through: :exercise_workouts
  has_many :exercises, through: :exercise_workouts

  def as_json
    {
      id: id,
      name: name,
      duration_workout: duration_workout,
      duration_rest: duration_rest,
      duration_total: duration_total,
      distance: distance,
      reps: reps,
      rounds: rounds,
      description: description,
      exercises: exercises.as_json
    }
  end
end
