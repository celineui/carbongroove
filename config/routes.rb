Carbongroove::Application.routes.draw do

  root :to => "users#new"
  root to: 'root#index'

  resources :users
  resources :sessions
  resources :receipts

  # get "sessions/new"
  # get "users/new"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

end