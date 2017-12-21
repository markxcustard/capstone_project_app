class ChangeNameOnDurationRest < ActiveRecord::Migration[5.1]
  def change
    rename_column :workouts, :default_duartion_rest, :default_duration_rest
  end
end
