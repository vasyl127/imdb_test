Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'page#Home'
  get 'test', to: 'page#test'
  get 'films/:id', to: 'films#show'
  get '/films/:id/:star_id', to: 'films#rating_update'
  get '/categories', to: 'page#categories_list'
  get '/personal_info', to: 'page#personal_info'
end
