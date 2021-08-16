Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "user_sessions" }
  root to: 'pages#home'
  resources :recipes, only: [:index, :show, :update]
  resources :ingredients, only: [:index, :show]

  authenticate :user do
    resources :users, only: [:show, :update]
    resources :recipes, only: [:new, :create, :destroy]
    resources :baskets, only: [:create, :show, :index]
    resources :detail_baskets, only: [:create, :index, :destroy]
  end
end
