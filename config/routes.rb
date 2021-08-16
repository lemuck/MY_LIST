Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "user_sessions" }
  root to: 'pages#home'

  authenticate :user do
    resources :users, only: [:show, :update]
    resources :recipes, only: [:new, :create, :edit]
    resources :baskets, only: [:create, :show]
    resources :detail_baskets, only: [:create, :index, :destroy]
  end

  resources :recipes, only: [:index, :show, :update]
  resources :ingredients, only: [:index, :show]
end
