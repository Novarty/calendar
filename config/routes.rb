Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'meetings#welcome'
  resources :meetings
  get '/all', to: 'meetings#all'
  get '/calendar', to: 'meetings#index'
  get 'users/:id', to: 'users#show', as: :user
end
