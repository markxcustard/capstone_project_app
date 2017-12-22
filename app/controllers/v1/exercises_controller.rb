class V1::ExercisesController < ApplicationController
   def index
    exercises = Exercise.all
    if params[:search]
      exercises = exercises.where("first_name ILIKE ?" , "%#{params[:search]}%")
    end
    render json: exercises.as_json
  end
  def show
    exercise_id = params[:id]
    exercise = Exercise.find_by(id: params[:exercise_id])
    render json: exercise.as_json
  end 
  def create
    exercise = Exercise.new(
    name: params[:name],
    olympic_weightlifting: params[:olympic_weightlifting],
    description:  params[:description],
    video_link: params[:video_link])
    exercise.save
    render json: exercise.as_json
  end
  def update
    exercise_id = paramns[:id]
    exercise = Exercise.find_by(id: params[:exercise_id])
    exercise.name = params[:name] || exercise.name
    exercise.olympic_weightlifting = params [:olympic_weightlifting] || exercise.olympic_weightlifting
    exercise.description = params[:description] || exercise.description
    exercise.video_link = params[:video_link] || exercise.video_link
    exercise.save
    render json: exercise.as_json
  end
def destroy
  exercise_id = params[:id]
  exercise = Exercise.find_by(id: exercise_id)
  exercise.destroy 
  render json: {message: "Exercise successfully removed!!"}
end
end
 
