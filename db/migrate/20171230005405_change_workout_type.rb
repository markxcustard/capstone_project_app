class ChangeWorkoutType < ActiveRecord::Migration[5.1]
  def change
    change_column :workouts, :duration_workout, "integer USING CAST(duration_workout as integer)"
  end
end
