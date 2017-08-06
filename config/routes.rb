Rails.application.routes.draw do
  get 'calendar/index'

  resources :meetings
  devise_for :users
  # get '/calendar' => 'calendar#index'
end
