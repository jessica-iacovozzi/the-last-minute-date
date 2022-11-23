Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
<<<<<<< Updated upstream
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
=======
  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#show'
>>>>>>> Stashed changes
end
