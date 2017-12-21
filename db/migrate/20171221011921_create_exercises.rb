class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.boolean :olympic_weightlifting
      t.string :description
      t.string :video_link

      t.timestamps
    end
  end
end
