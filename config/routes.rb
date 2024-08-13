Rails.application.routes.draw do
  resources :students

  resources :registrations, only: [:create]

  post '/auth/login', to: 'sessions#login'
end
