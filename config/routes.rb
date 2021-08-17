Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "user_sessions" }
  root to: 'pages#newhome'
  get '/home', to: 'pages#home', as: 'home'
  resources :recipes, only: [:index, :show, :update]
  resources :ingredients, only: [:index, :show]

  authenticate :user do
    resources :users, only: [:show, :update, :edit]

    resources :recipes, only: [:new, :create, :edit]
    resources :baskets, only: [:create, :show]

    resources :detail_baskets, only: [:create, :index, :destroy]
  end
end
