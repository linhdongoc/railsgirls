Rails.application.routes.draw do
  devise_for :users

  get 'pages/index'
  get 'applicants/new'
  get 'applicants/show'

  resources :applicants
  resources :comments
  resources :ideas
  resources :jobs

  root to: redirect('/pages/index')
end
