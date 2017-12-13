Rails.application.routes.draw do

  namespace :v1 do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
