Rails.application.routes.draw do
  devise_for :users, controller: {
      sessions: 'users/sessions'
  }

  get 'pages/index'
  get 'pages/menu_card'
  get 'portfolios/download/:document', to: 'portfolios#download', as: 'portfolios_download'

  resources :portfolios
  resources :comments
  resources :ideas
  resources :jobs
  resources :room_messages
  resources :rooms

  root to: redirect('/pages/index')
end
