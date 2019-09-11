Rails.application.routes.draw do
  devise_for :users, controller: {
      sessions: 'users/sessions'
  }

  get 'pages/index'
  get 'pages/menu_card'
  get 'portfolios/download/:document', to: 'portfolios#download', as: 'portfolios_download'
  get 'trello_card_printers/index'
  put 'trello_card_printers/generate_pdfs', to: 'trello_card_printers#generate_pdfs', as: :trello_card_printers_generate_pdfs
  get 'convert_to_mp3/index'

  resources :portfolios
  resources :comments
  resources :ideas
  resources :jobs
  resources :room_messages
  resources :rooms

  root to: redirect('/pages/index')
end
