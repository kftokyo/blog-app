Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  get 'blogs' => 'blogs#index'
  get 'blogs/new' => 'blogs#new'
  post 'blogs' => 'blogs#create'
  get 'users/:id' => 'users#show'
  delete 'blogs/:id' => 'blogs#destroy'
  # resources :groups, only: [:new, :create, :edit, :update] do
  #   resources :messages, only: [:index, :create]
  # end
end
