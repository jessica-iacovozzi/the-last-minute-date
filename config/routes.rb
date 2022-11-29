Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }

  root to: "pages#home"

  resources :events, only: %i[show] do
    get '/connection/:target_id', to: 'messages#create_message_and_conversation', as: :connection
  end
  resources :users, only: %i[show]

  get '/events/:id/tickets', to: 'tickets#buy_ticket', as: :buy_ticket
  get '/my_tickets', to: 'tickets#my_tickets'
  get '/my_profile', to: 'users#my_profile'
  get '/edit_my_profile', to: 'users#edit'
  patch '/my_profile', to: 'users#update'
  get '/conversations', to: 'conversations#all_conversation', as: :all_messages
  get '/connection/:target_id', to: 'messages#create_message_and_conversation', as: :connection
  resources :conversations, only: %i[show] do
    resources :messages, only: :create
  end
end
