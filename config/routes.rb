Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#show'
end
