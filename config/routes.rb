Rails.application.routes.draw do
  get 'test',to: 'top_page#test'
  get 'countries', to: 'top_page#countries'
  get 'countries/country', to: 'top_page#country'
  
  # # get 'posts/new'
  # # get 'posts/edit'
  # get "posts/:id/edit" => "posts#edit"

  # get "posts/:id/edit" => "posts#edit"
  # post "posts/:id/update" => "posts#update"

  get 'users/index'
  get 'users/show'
  
  root 'top_page#home'

  devise_for :users, controllers: { registrations: 'users/registrations',:omniauth_callbacks => "omniauth_callbacks" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
  end
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  
    # get 'posts/new', to: 'posts#new'
    # get 'posts/:id/edit', to: 'posts#edit'
    # post 'posts/:id/update', to: 'posts#update'
    delete 'posts/:id', to: 'posts#destroy'
  
end
