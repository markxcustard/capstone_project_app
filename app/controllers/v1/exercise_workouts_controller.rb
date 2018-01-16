class V1::ExerciseWorkoutsController < ApplicationController
  def index
    exercise_workouts = ExerciseWorkout.all
    # if params[:searchExerciseId]
    #   exercise_workouts = exercise_workouts.where(" exercise_id = ?" , "%#{params[:searchExerciseId]}%")
    if params[:users_workouts]
      exercise_workouts = ExerciseWorkout.all
      # exercise_workouts = exercise_workouts.where(user_id: current_user.id)
      exercise_workouts.sort_by {|exercise_workout| exercise_workout[:exercise_workouts_id]}
    end

    render json: exercise_workouts.as_json
  end

  def show
    exercise_workout_id = params[:id]
    exercise_workout = ExerciseWorkout.find_by(id: exercise_workout_id)
    render json: exercise_workout.as_json
  end

  def create
    exercise_workout = ExerciseWorkout.new(
      exercise_id: params[:exercise_id],
      workout_id: params[:workout_id],
      # user_id:  params[:user_id]
      user_id:  current_user.id
      )
    exercise_workout.save
    render json: exercise_workout.as_json
  end
  
  def destroy
    exercise_workout_id = params[:id]
    exercise_workout = ExerciseWorkout.find_by(id: exercise_workout_id)
    exercise_workout.destroy 
    render json: {message: "Exercise Workout successfully removed!!"}
  end

end
 
