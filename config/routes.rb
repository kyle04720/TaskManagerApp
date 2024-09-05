Rails.application.routes.draw do
  get "tasks/index" => "tasks#index"
  get "tasks/new" => "tasks#new"
  get "tasks/:id" => "tasks#show"
  task "tasks/create" => "tasks#create"

  get "/" => "home#top"
  get "about" => "home#about"
end
