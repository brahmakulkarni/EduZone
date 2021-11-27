Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  get 'posts/new'
  root 'home#index'
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
