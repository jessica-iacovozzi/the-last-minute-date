Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events, only: [:index]

  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#show'

  get '/conversations', to: 'conversations#all_conversation'
  resources :conversations, only: %i[show] do
    resources :messages, only: :create
  end
end
