Rails.application.routes.draw do
# get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  resources :books
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  get 'home/about' => 'homes#about',as: 'about'
  resources :users
  # get 'users/show'
  # get 'users/edit'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
