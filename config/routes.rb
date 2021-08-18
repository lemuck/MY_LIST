Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "user_sessions" }

  root to: 'pages#newhome'
  get '/home',  to: 'pages#home',  as: 'home'
  get '/order', to: 'pages#order', as: 'order'
  get '/category', to: 'pages#category', as: 'category'
  get '/my_list', to: 'pages#my_list', as: 'my_list'
  authenticate :user do
    resources :users, only: [:show, :update, :edit]

    resources :recipes, only: [:new, :create, :edit]
    resources :baskets, only: [:create, :show]

    resources :detail_baskets, only: [:create, :index, :destroy]
  end

  resources :recipes, only: [:index, :show, :update]
  resources :ingredients, only: [:index, :show]
end
