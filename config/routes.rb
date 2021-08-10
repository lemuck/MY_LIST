Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :recipes
  resources :users do
    resources :baskets, only: [:show]
  end
end
