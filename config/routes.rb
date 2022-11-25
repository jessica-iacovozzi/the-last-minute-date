Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :events, only: %i[show]

  resources :events, only: %i[show]

  get '/events/:id/tickets', to: 'tickets#buy_ticket', as: :buy_ticket
  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#my_profile'
end
