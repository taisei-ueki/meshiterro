Rails.application.routes.draw do
    
    
  get "/homes/about" => "homes#about", as: "about"
  root 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
