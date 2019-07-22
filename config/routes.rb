Rails.application.routes.draw do
  resources :my_shops
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'my_shops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
