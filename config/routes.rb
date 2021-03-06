Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  post '/login', to: 'sessions#create', as: 'logged_in'
  get '/welcome', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
