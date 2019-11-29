Rails.application.routes.draw do
  # get "users" => "users#index"
  # get "users/new" => "users#new"
  # post "users" => "users#create"
  # get "us"
  get "users/total" => "users#total"
  resources :users
  
end
