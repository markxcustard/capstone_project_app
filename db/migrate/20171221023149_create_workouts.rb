class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :default_duration_work
      t.integer :default_duartion_rest
      t.integer :default_duration
      t.integer :default_reps
      t.integer :default_rounds

      t.timestamps
    end
  end
end
