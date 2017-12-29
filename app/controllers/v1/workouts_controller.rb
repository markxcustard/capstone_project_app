class V1::WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    if params[:search]
      workouts = workouts.where("first_name ILIKE ?" , "%#{params[:search]}%")
    end
    render json: workouts.as_json
  end
  def show
    workout_id = params[:id]
    workout = Workout.find_by(id: workout_id)
    render json: workout.as_json
  end 
  def create
    workout = Workout.new(
    name: params[:name],
    default_duration_work: params[:default_duration_work],
    default_duration_rest:  params[:default_duration_rest],
    default_duration_total: params[:default_duration_total],
    default_reps: params[:default_reps],
    default_rounds: params[:default_rounds])
    workout.save
    render json: workout.as_json
  end
  def update
    workout_id = paramns[:id]
    workout = Workout.find_by(id: params[:workout_id])
    workout.name = params[:name] || workout.name
    workout.default_duration_work = params [:default_duration_work] || workout.default_duration_work
    workout.default_duration_rest = params[:default_duration_rest] || workout.default_duration_rest
    workout.default_duration_total = params[:default_duration_total] || workout.default_duration_total
    workout.default_reps = params[:default_reps] || workout.default_reps
    workout.default_rounds = params[:default_rounds] || workout.default_rounds
    workout.save
    render json: workout.as_json
  end
  def destroy
    workout_id = params[:id]
    workout = Workout.find_by(id: params[:workout_id])
    workout.destroy 
    render json: {message: "Workout successfully removed!!"}
  end
end

