Rails.application.routes.draw do

  resources :students do
    get :edit, on: :member
  end

  resources :registrations, only: [:create]

  post '/auth/login', to: 'sessions#login'
end
