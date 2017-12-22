Rails.application.routes.draw do

  namespace :v1 do
    
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/workouts" => "workouts#index"
    post "/workouts" => "workouts#create"
    get "/workouts/:id" => "workouts#show"
    patch "/workouts/:id" => "workouts#update"
    delete "/workouts/:id" => "workouts#destroy"
  
    get "/exercises" => "exercises#index"
    post "/exercises" => "exercises#create"
    get "/exercises/:id" => "exercises#show"
    patch "/exercises/:id" => "exercises#update"
    delete "/exercises/:id" => "exercises#destroy"

    get "/exercise_workouts" => "exercise_workouts#index"
    post "/exercise_workouts" => "exercise_workouts#create"
    get "/exercise_workouts/:id" => "exercise_workouts#show"
    patch "/exercise_workouts/:id" => "exercise_workouts#update"
    delete "/exercise_workouts/:id" => "exercise_workouts#destroy"
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
