Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/edit'
  get 'posts/index'
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
  
end
