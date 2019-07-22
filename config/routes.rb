Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'my_shops#index'
  get 'contacts', to: 'my_shops#contacts'
  get 'payment_delivery', to: 'my_shops#payment_delivery'
  get 'order_goods', to: 'my_shops#order_goods'
end
