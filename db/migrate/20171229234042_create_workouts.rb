class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :duration_workout
      t.string :integer
      t.integer :duration_rest
      t.integer :duration_total
      t.integer :distance
      t.integer :reps
      t.integer :rounds

      t.timestamps
    end
  end
end
