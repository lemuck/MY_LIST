Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :recipes, only: [:index, :show]
  resources :ingredients, only: [:index, :show]
    
  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update, :destroy]
    resources :baskets, only: [:show]
    resources :details_baskets
  end
end
