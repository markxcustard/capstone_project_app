class NameChangeOfColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :workouts, :default_duration, :default_duration_total
  end
end
