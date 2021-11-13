#Creating the necessary routes for our mobile app (directing to different pages for the different functions)
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "profile", to: "pages#profile"

  #having nested routes between books and bookings, as they're linked in the database
  resources :books do
    resources :bookings, only: [ :new, :create ]
  end
end
