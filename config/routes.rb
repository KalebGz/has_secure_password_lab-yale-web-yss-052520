Rails.application.routes.draw do

  get '/', to: 'welcome#home'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]  
end
