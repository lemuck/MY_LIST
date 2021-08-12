Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "user_sessions" }
  root to: 'pages#home'
  resources :recipes, only: [:index, :show]
  resources :ingredients, only: [:index, :show]

  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update, :destroy]
    resources :baskets, only: [:create, :show]
    resources :detail_baskets, only: [:create, :index, :destroy]
  end
end
