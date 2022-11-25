Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :events, only: %i[show]

  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#my_profile'
  get '/edit_my_profile', to: 'users#edit'
  patch '/my_profile', to: 'users#update'
end
