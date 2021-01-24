Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :update, :edit, :destroy]
  resources :users, only: [:edit, :index, :show, :update]
  get "home/about" => "homes#about" , as: "about"
end
