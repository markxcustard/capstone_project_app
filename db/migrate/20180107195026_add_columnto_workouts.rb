class AddColumntoWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :description, :text
  end
end
