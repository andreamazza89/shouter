Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  resource  :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
  resource  :dashboard, only: [:show]
end
