Rails.application.routes.draw do
  devise_for :users, controller: {
      sessions: 'users/sessions'
  }

  get 'pages/index'
  get 'pages/menu_card'

  resources :portfolios
  resources :comments
  resources :ideas
  resources :jobs

  root to: redirect('/pages/index')
end
