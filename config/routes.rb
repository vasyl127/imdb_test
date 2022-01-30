Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'page#Home'
  get 'test', to: 'page#test'
  get 'films/:id', to: 'film#show'
  get '/films/:id/:star_id', to: 'film#rating_update'
  get 'categories/:tag_id', to: 'page#categories'
end
