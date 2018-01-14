class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :exercise_workouts
  has_many :workouts, through: :exercise_workouts
  has_many :exercises, through: :exercise_workouts

  def as_json
    {
      id: id,
      name: name,
      email: email,
      workouts: workouts.as_json.uniq
    }
  end
end
