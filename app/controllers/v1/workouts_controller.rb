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
    duration_work: params[:duration_work],
    duration_rest:  params[:duration_rest],
    duration_total: params[:duration_total],
    reps: params[:reps],
    rounds: params[:rounds],
    distance: params[:distance])
    workout.save
    render json: workout.as_json
  end
  def update
    workout_id = paramns[:id]
    workout = Workout.find_by(id: params[:workout_id])
    workout.name = params[:name] || workout.name
    workout.duration_work = params [:duration_work] || workout.duration_work
    workout.duration_rest = params[:duration_rest] || workout.duration_rest
    workout.duration_total = params[:duration_total] || workout.duration_total
    workout.reps = params[:reps] || workout.reps
    workout.rounds = params[:rounds] || workout.rounds
    workout.distance = params[:distance] || workout.distance
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

