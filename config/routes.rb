Rails.application.routes.draw do
  get '/', to: 'blogs#index'
  resources :blogs
  resources :users, only: [:new, :create, :destroy, :show]
  resource :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
