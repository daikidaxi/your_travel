Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/edit'
  get 'posts/index'
  get 'users/index'
  get 'users/show'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
  end
  
  root 'top_page#home'
  resources :users
  resources :posts
end
