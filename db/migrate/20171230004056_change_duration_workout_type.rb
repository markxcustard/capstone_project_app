class ChangeDurationWorkoutType < ActiveRecord::Migration[5.1]
  def change
    change_column :workouts, :duration_workout, "numeric USING CAST(duration_workout as numeric)"
    remove_column :workouts, :integer, :string
  end
end
