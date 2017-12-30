class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :exercise_workouts
  has_many :workout, through: :exercise_workouts
  has_many :exercise, through: :exercise_workouts
end
