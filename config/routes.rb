Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  resources :posts, only: [:new, :create, :index]
  # Defines the root path route ("/")
  # root "articles#index"
end
