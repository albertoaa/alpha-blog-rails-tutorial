Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
end
