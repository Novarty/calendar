Rails.application.routes.draw do
  root 'meetings#welcome'
  resources :meetings
  devise_for :users
  get '/calendar' => 'meetings#index'
end
