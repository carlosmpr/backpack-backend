Rails.application.routes.draw do
  resources :firend_requests
  resources :messages
  resources :chat_rooms
  resources :activity_reviews
  resources :rails
  resources :user_friends
  resources :friends_goings
  resources :user_activities
  resources :locations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'users#login'
  post '/me', to: 'users#me'
  post '/activity/detail', to: 'activities#details'
 
end
