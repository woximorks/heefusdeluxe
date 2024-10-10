Rails.application.routes.draw do
  resources :upcoming_shows
  get 'upcoming_shows/index'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'portfolio', to: 'pages#portfolio'
  get 'calendar', to: 'pages#calendar'
  resources :upcoming_shows
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
end
