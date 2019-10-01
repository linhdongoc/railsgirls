Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  root 'pages#index'

  devise_for :users, controller: { sessions: 'users/sessions' }
  resources :portfolios
  resources :comments
  resources :ideas do
    post :import, on: :collection
    post :mass_destroy, on: :collection
  end
  resources :jobs
  resources :room_messages
  resources :rooms
  resources :pages, only: %i(index) do
    get :menu_card, on: :collection
  end

  get 'portfolios/download/:document', to: 'portfolios#download', as: 'portfolios_download'
  get 'trello_card_printers/index'
  put 'trello_card_printers/generate_pdfs', to: 'trello_card_printers#generate_pdfs', as: :trello_card_printers_generate_pdfs
  get 'convert_to_mp3/index'
end
