Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :users, only: [:index, :show, :edit, :update,:cre]
  root :to => "home#top"
  get "home/about" => "home#about", as: "about"
  
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
