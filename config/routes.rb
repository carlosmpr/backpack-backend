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
  get '/me', to: 'users#me'
  get '/my_activities', to: 'users#my_activities'
  get '/my_friends_goings/:id', to: 'users#friends_goings'
  get '/my_friends', to: 'users#my_friends'
  post '/invitation_response', to: 'friends_goings#going'
  post '/activity/detail', to: 'activities#details'
  post '/accept_friend', to: 'firend_requests#add_friend'
  mount ActionCable.server => "/cable"
end
