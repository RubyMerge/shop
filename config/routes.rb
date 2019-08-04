Rails.application.routes.draw do

  root to: 'my_shops#index'

  resources :orders

  post 'orders/cost_calculation', to: 'orders#cost_calculation'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'contacts', to: 'my_shops#contacts'
  get 'payment_delivery', to: 'my_shops#payment_delivery'
  get 'order_goods', to: 'my_shops#order_goods'


end
